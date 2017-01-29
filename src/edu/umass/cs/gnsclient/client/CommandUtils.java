
package edu.umass.cs.gnsclient.client;

import edu.umass.cs.gnsclient.client.GNSClientConfig.GNSCC;
import edu.umass.cs.gnsclient.client.util.GuidEntry;
import edu.umass.cs.gnscommon.CommandType;
import edu.umass.cs.gnscommon.ResponseCode;
import edu.umass.cs.gnscommon.exceptions.client.EncryptionException;
import edu.umass.cs.gnscommon.exceptions.client.AclException;
import edu.umass.cs.gnscommon.exceptions.client.ClientException;
import edu.umass.cs.gnscommon.exceptions.client.DuplicateNameException;
import edu.umass.cs.gnscommon.exceptions.client.FieldNotFoundException;
import edu.umass.cs.gnscommon.exceptions.client.InvalidFieldException;
import edu.umass.cs.gnscommon.exceptions.client.InvalidGuidException;
import edu.umass.cs.gnscommon.exceptions.client.VerificationException;
import edu.umass.cs.gnscommon.packets.CommandPacket;
import edu.umass.cs.gnscommon.packets.ResponsePacket;
import edu.umass.cs.gnscommon.utils.CanonicalJSON;
import edu.umass.cs.gnscommon.utils.Format;
import edu.umass.cs.gnscommon.exceptions.client.OperationNotSupportedException;
import edu.umass.cs.gnsserver.main.GNSConfig;
import edu.umass.cs.nio.JSONPacket;
import edu.umass.cs.utils.Config;
import edu.umass.cs.utils.DelayProfiler;
import edu.umass.cs.utils.SessionKeys;
import edu.umass.cs.utils.SessionKeys.SecretKeyCertificate;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.util.Date;
import java.util.Random;
import java.util.logging.Level;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import edu.umass.cs.gnscommon.GNSProtocol;
import javax.xml.bind.DatatypeConverter;


public class CommandUtils {


  private static Signature[] signatureInstances = new Signature[2 * Runtime
          .getRuntime().availableProcessors()];
  private static Random random;

  static {
    try {
      for (int i = 0; i < signatureInstances.length; i++) {
        signatureInstances[i] = Signature
                .getInstance(GNSProtocol.SIGNATURE_ALGORITHM.toString());
      }
      random = new Random();
    } catch (NoSuchAlgorithmException e) {
      GNSConfig.getLogger().log(Level.SEVERE,
              "Unable to initialize for authentication:{0}", e);
    }
  }

  private static int sigIndex = 0;

  private static synchronized Signature getSignatureInstance() {
    return signatureInstances[sigIndex++ % signatureInstances.length];
  }


  public static JSONObject createCommand(CommandType commandType,
          Object... keysAndValues) throws JSONException {
    long startTime = System.currentTimeMillis();
    JSONObject result = new JSONObject();
    String key;
    Object value;
    result.put(GNSProtocol.COMMAND_INT.toString(), commandType.getInt());
    for (int i = 0; i < keysAndValues.length; i = i + 2) {
      key = (String) keysAndValues[i];
      value = keysAndValues[i + 1];
      result.put(key, value);
    }

    DelayProfiler.updateDelay("createCommand", startTime);
    return result;
  }


  public static String specialCaseSingleField(String response) {
    if (JSONPacket.couldBeJSON(response) && response.startsWith("{")) {
      try {
        JSONObject json = new JSONObject(response);
        String[] keys = JSONObject.getNames(json);
        return (keys.length == 1) ? json.getString(JSONObject
                .getNames(json)[0]) : response;
      } catch (JSONException e) {
        e.printStackTrace();
      }
    }
    return response;
  }


  public static JSONArray commandResponseToJSONArray(String field, String response) throws JSONException {
    if (JSONPacket.couldBeJSONArray(response)) {
      return new JSONArray(response);
    } else {
      return new JSONObject(response).getJSONArray(field);
    }
  }


  public static String signDigestOfMessage(PrivateKey privateKey,
          String message) throws NoSuchAlgorithmException,
          InvalidKeyException, SignatureException,
          UnsupportedEncodingException {
    Signature signatureInstance = getSignatureInstance();
    synchronized (signatureInstance) {
      signatureInstance.initSign(privateKey);
      // iOS client uses UTF-8 - should switch to ISO-8859-1 to be consistent with
      // secret key version
      signatureInstance.update(message.getBytes("UTF-8"));
      byte[] signedString = signatureInstance.sign();
      // We used to encode this as a hex so we could send it with the html without
      // encoding. Not really necessary anymore for the socket based client,
      // but the iOS client does as well so we need to keep it like this.
      // Also note that the secret based method doesn't do this - it just returns a string
      // using the ISO-8859-1 charset.
      String result = DatatypeConverter.printHexBinary(signedString);
      //String result = ByteUtils.toHex(signedString);
      return result;
    }
  }

  private static final MessageDigest[] mds = new MessageDigest[Runtime
          .getRuntime().availableProcessors()];

  static {
    for (int i = 0; i < mds.length; i++) {
      try {
        mds[i] = MessageDigest
                .getInstance(GNSProtocol.DIGEST_ALGORITHM.toString());
      } catch (NoSuchAlgorithmException e) {
        e.printStackTrace();
        System.exit(1);
      }
    }
  }
  private static int mdIndex = 0;

  private static MessageDigest getMessageDigestInstance() {
    return mds[mdIndex++ % mds.length];
  }

  private static final Cipher[] ciphers = new Cipher[2 * Runtime.getRuntime()
          .availableProcessors()];

  static {
    for (int i = 0; i < ciphers.length; i++) {
      try {
        ciphers[i] = Cipher
                .getInstance(GNSProtocol.SECRET_KEY_ALGORITHM.toString());
      } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
        e.printStackTrace();
        System.exit(1);
      }
    }
  }

  private static int cipherIndex = 0;

  private static Cipher getCipherInstance() {
    return ciphers[cipherIndex++ % ciphers.length];
  }


  public static String signDigestOfMessage(PrivateKey privateKey,
          PublicKey publicKey, String message)
          throws NoSuchAlgorithmException, InvalidKeyException,
          SignatureException, UnsupportedEncodingException,
          IllegalBlockSizeException, BadPaddingException,
          NoSuchPaddingException {
    SecretKey secretKey = SessionKeys.getOrGenerateSecretKey(publicKey,
            privateKey);
    MessageDigest md = getMessageDigestInstance();
    byte[] digest;
    // FIXME: The reason why we use CHARSET should be more throughly documented here.
    // This might be important for folks writing clients in other languages.
    byte[] body = message.getBytes(GNSProtocol.CHARSET.toString());
    synchronized (md) {
      digest = md.digest(body);
    }
    assert (digest != null);
    Cipher cipher = getCipherInstance();
    byte[] signature;
    synchronized (cipher) {
      cipher.init(Cipher.ENCRYPT_MODE, secretKey);
      signature = cipher.doFinal(digest);
    }

    SecretKeyCertificate skCert = SessionKeys
            .getSecretKeyCertificate(publicKey);
    byte[] encodedSKCert = skCert.getEncoded(false);

    // arun: Combining them like this because the rest of the GNS code seems
    // poorly organized to add more signature related fields in a systematic
    // manner.
    byte[] combined = new byte[Short.BYTES + signature.length + Short.BYTES
            + encodedSKCert.length];
    ByteBuffer.wrap(combined)
            // signature
            .putShort((short) signature.length).put(signature)
            // certificate
            .putShort((short) encodedSKCert.length).put(encodedSKCert);

    // FIXME: The reason why we use CHARSET should be more throughly documented here.
    return new String(combined, GNSProtocol.CHARSET.toString());
  }


  public static void addMessageWithoutSignatureToJSON(JSONObject command) throws JSONException {
    if (command.has(GNSProtocol.SIGNATURE.toString())) {
      String signature = command.getString(GNSProtocol.SIGNATURE.toString());
      command.remove(GNSProtocol.SIGNATURE.toString());
      String commandSansSignature = CanonicalJSON.getCanonicalForm(command);
      command.put(GNSProtocol.SIGNATURE.toString(), signature).put(GNSProtocol.SIGNATUREFULLMESSAGE.toString(),
              commandSansSignature);
    }
  }


  protected static ResponsePacket checkResponseOldSchool(ResponsePacket cvrp) throws ClientException {
    checkResponseOldSchool(cvrp.getReturnValue());
    return cvrp;
  }


  public static String checkResponseOldSchool(String response) throws ClientException {
    // System.out.println("response:" + response);
    if (response.startsWith(GNSProtocol.BAD_RESPONSE.toString())) {
      String[] results = response.split(" ");
      // System.out.println("results length:" + results.length);
      if (results.length < 2) {
        throw new ClientException("Invalid bad response indicator: "
                + response);
      } else if (results.length >= 2) {
        // System.out.println("results[0]:" + results[0]);
        // System.out.println("results[1]:" + results[1]);
        String error = results[1];
        // deal with the rest
        StringBuilder parts = new StringBuilder();
        for (int i = 2; i < results.length; i++) {
          parts.append(" ");
          parts.append(results[i]);
        }
        String rest = parts.toString();
        if (error.startsWith(GNSProtocol.BAD_SIGNATURE.toString())) {
          throw new EncryptionException(error);
        }
        if (error.startsWith(GNSProtocol.BAD_GUID.toString())
                || error.startsWith(GNSProtocol.BAD_ACCESSOR_GUID.toString())
                // why not with GNSProtocol.DUPLICATE_NAME.toString()?
                || error.startsWith(GNSProtocol.DUPLICATE_GUID.toString())
                || error.startsWith(GNSProtocol.BAD_ACCOUNT.toString())) {
          throw new InvalidGuidException(error + rest);
        }
        if (error.startsWith(GNSProtocol.DUPLICATE_FIELD.toString())) {
          throw new InvalidFieldException(error + rest);
        }
        if (error.startsWith(GNSProtocol.FIELD_NOT_FOUND.toString())) {
          throw new FieldNotFoundException(error + rest);
        }
        if (error.startsWith(GNSProtocol.ACCESS_DENIED.toString())) {
          throw new AclException(error + rest);
        }
        if (error.startsWith(GNSProtocol.DUPLICATE_NAME.toString())) {
          throw new DuplicateNameException(error + rest);
        }
        if (error.startsWith(GNSProtocol.VERIFICATION_ERROR.toString())) {
          throw new VerificationException(error + rest);
        }
        if (error
                .startsWith(GNSProtocol.ALREADY_VERIFIED_EXCEPTION.toString())) {
          throw new VerificationException(error + rest);
        }
        if (error.startsWith(GNSProtocol.OPERATION_NOT_SUPPORTED.toString())) {
          throw new OperationNotSupportedException(error + rest);
        }
        throw new ClientException("General command failure: " + error
                + rest);
      }
    }
    if (response.startsWith(GNSProtocol.NULL_RESPONSE.toString())) {
      return null;
    } else if (response
            .startsWith(GNSProtocol.ACTIVE_REPLICA_EXCEPTION.toString()
                    .toString())) {
      throw new InvalidGuidException(response);
    } else {
      return response;
    }
  }


  public static ResponsePacket checkResponse(
          ResponsePacket responsePacket, CommandPacket command) throws ClientException {

    ResponseCode code = responsePacket.getErrorCode();
    String returnValue = responsePacket.getReturnValue();
    // If the code isn't an error or exception we're just returning the
    // return value. Also handle the special case where the command
    // wants to return a null value.
    if (code.isOKResult()) {
      return (returnValue.startsWith(GNSProtocol.NULL_RESPONSE.toString())) ? null
              : responsePacket;//returnValue;
    }
    // else error
    String errorSummary = code
            + ": "
            + returnValue
            //+ ": " + responsePacket.getSummary()
            + (command != null ? " for command " + command.getSummary()
                    : "");
    switch (code) {
      case SIGNATURE_ERROR:
        throw new EncryptionException(code, errorSummary);

      case BAD_GUID_ERROR:
      case BAD_ACCESSOR_ERROR:
      case BAD_ACCOUNT_ERROR:
        throw new InvalidGuidException(code, errorSummary);

      case FIELD_NOT_FOUND_ERROR:
        throw new FieldNotFoundException(code, errorSummary);
      case ACCESS_ERROR:
        throw new AclException(code, errorSummary);
      case VERIFICATION_ERROR:
        throw new VerificationException(code, errorSummary);
      case ALREADY_VERIFIED_EXCEPTION:
        throw new VerificationException(code, errorSummary);
      case DUPLICATE_ID_EXCEPTION:
      //case DUPLICATE_GUID_EXCEPTION:
      //case DUPLICATE_NAME_EXCEPTION:
        throw new DuplicateNameException(code, errorSummary);
      case DUPLICATE_FIELD_EXCEPTION:
        throw new InvalidFieldException(code, errorSummary);

      case ACTIVE_REPLICA_EXCEPTION:
        throw new InvalidGuidException(code, errorSummary);
      case NONEXISTENT_NAME_EXCEPTION:
        throw new InvalidGuidException(code, errorSummary);

      case TIMEOUT:
      case RECONFIGURATION_EXCEPTION:
          throw new ClientException(code, errorSummary);    	  

      default:
        throw new ClientException(code,
                "Error received with an unknown response code: "
                + errorSummary);
    }
  }


  public static String getRandomRequestNonce() {
    return (random.nextLong() + "");
  }


  public static JSONObject createCommandWithTimestampAndNonce(CommandType commandType, boolean includeTimestamp,
          Object... keysAndValues)
          throws ClientException, JSONException {
    JSONObject result = createCommand(commandType, keysAndValues);
    if (includeTimestamp) {
      result.put(GNSProtocol.TIMESTAMP.toString(),
              Format.formatDateISO8601UTC(new Date()));
    }
    result.put(GNSProtocol.NONCE.toString(), getRandomRequestNonce());
    return result;
  }
  

  public static JSONObject createAndSignCommand(CommandType commandType,
          PrivateKey privateKey, PublicKey publicKey, Object... keysAndValues)
          throws ClientException {
    try {
      JSONObject result = createCommandWithTimestampAndNonce(commandType, true, keysAndValues);
      String canonicalJSON = CanonicalJSON.getCanonicalForm(result);
      String signatureString = null;
      long t = System.nanoTime();
      if (Config.getGlobalBoolean(GNSCC.ENABLE_SECRET_KEY)) {
        signatureString = signDigestOfMessage(privateKey, publicKey, canonicalJSON);
      } else {
        signatureString = signDigestOfMessage(privateKey, canonicalJSON);
      }
      result.put(GNSProtocol.SIGNATURE.toString(), signatureString);
      if (edu.umass.cs.utils.Util.oneIn(10)) {
        DelayProfiler.updateDelayNano("signature", t);
      }
      return result;
    } catch (JSONException | NoSuchAlgorithmException | InvalidKeyException | SignatureException | UnsupportedEncodingException | IllegalBlockSizeException | BadPaddingException | NoSuchPaddingException e) {
      throw new ClientException("Error encoding message", e);
    }
  }


  public static JSONObject createAndSignCommand(CommandType commandType,
          GuidEntry querier, Object... keysAndValues) throws ClientException {
    try {
      return querier != null ? createAndSignCommand(commandType,
              querier.getPrivateKey(), querier.getPublicKey(), keysAndValues)
              : createCommand(commandType, keysAndValues);
    } catch (JSONException e) {
      throw new ClientException("Error encoding message", e);
    }
  }
}
