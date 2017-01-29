
package edu.umass.cs.gnsserver.gnsapp.clientCommandProcessor.commands.secured;

import edu.umass.cs.gnscommon.utils.Format;
import edu.umass.cs.gnscommon.SharedGuidUtils;
import edu.umass.cs.gnsserver.gnsapp.clientCommandProcessor.ClientRequestHandlerInterface;
import edu.umass.cs.gnsserver.gnsapp.clientCommandProcessor.commandSupport.CommandResponse;
import edu.umass.cs.gnsserver.gnsapp.clientCommandProcessor.commandSupport.FieldMetaData;
import edu.umass.cs.gnsserver.gnsapp.clientCommandProcessor.commandSupport.MetaDataTypeName;
import edu.umass.cs.gnsserver.gnsapp.clientCommandProcessor.commands.CommandModule;
import edu.umass.cs.gnscommon.CommandType;
import edu.umass.cs.gnscommon.GNSProtocol;
import edu.umass.cs.gnscommon.packets.CommandPacket;
import edu.umass.cs.gnscommon.ResponseCode;
import edu.umass.cs.gnsserver.gnsapp.clientCommandProcessor.commands.AbstractCommand;
import edu.umass.cs.gnsserver.interfaces.InternalRequestHeader;
import edu.umass.cs.gnsserver.main.GNSConfig;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Date;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


public class AclRetrieveSecured extends AbstractCommand {


  public AclRetrieveSecured(CommandModule module) {
    super(module);
  }


  @Override
  public CommandType getCommandType() {
    return CommandType.AclRetrieveSecured;
  }

  @Override
  public CommandResponse execute(InternalRequestHeader header, CommandPacket commandPacket, 
          ClientRequestHandlerInterface handler) throws InvalidKeyException, InvalidKeySpecException,
          JSONException, NoSuchAlgorithmException, SignatureException, ParseException {
    JSONObject json = commandPacket.getCommand();
    String guid = json.getString(GNSProtocol.GUID.toString());
    String field = json.getString(GNSProtocol.FIELD.toString());
    String accessType = json.getString(GNSProtocol.ACL_TYPE.toString());
    Date timestamp = json.has(GNSProtocol.TIMESTAMP.toString()) 
            ? Format.parseDateISO8601UTC(json.getString(GNSProtocol.TIMESTAMP.toString())) : null; // can be null on older client

    MetaDataTypeName access;
    if ((access = MetaDataTypeName.valueOf(accessType)) == null) {
      return new CommandResponse(ResponseCode.BAD_ACL_TYPE_ERROR, 
              GNSProtocol.BAD_RESPONSE.toString() + " " + GNSProtocol.BAD_ACL_TYPE.toString()
              + "Should be one of " + Arrays.toString(MetaDataTypeName.values()));
    }
    JSONArray guids = SharedGuidUtils.convertPublicKeysToGuids(
            new JSONArray(FieldMetaData.lookup(header, commandPacket,
            access,
            guid, field, 
            GNSProtocol.INTERNAL_QUERIER.toString(),
            //GNSConfig.getInternalOpSecret(), 
            null, null,
            timestamp, handler)));
    return new CommandResponse(ResponseCode.NO_ERROR, guids.toString());
  }

  
}
