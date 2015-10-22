/*
 * Copyright (C) 2014
 * University of Massachusetts
 * All Rights Reserved 
 *
 * Initial developer(s): Westy.
 */
package edu.umass.cs.gns.gnsApp.clientCommandProcessor.commands.admin;

import edu.umass.cs.gns.gnsApp.clientCommandProcessor.commandSupport.AccountAccess;
import edu.umass.cs.gns.gnsApp.clientCommandProcessor.commandSupport.CommandResponse;
import static edu.umass.cs.gns.gnsApp.clientCommandProcessor.commandSupport.GnsProtocolDefs.*;
import edu.umass.cs.gns.gnsApp.clientCommandProcessor.commandSupport.GuidInfo;
import edu.umass.cs.gns.gnsApp.clientCommandProcessor.commands.CommandModule;
import edu.umass.cs.gns.gnsApp.clientCommandProcessor.commands.GnsCommand;
import edu.umass.cs.gns.gnsApp.clientCommandProcessor.demultSupport.ClientRequestHandlerInterface;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author westy
 */
public class RemoveTag extends GnsCommand {
  
  /**
   *
   * @param module
   */
  public RemoveTag(CommandModule module) {
    super(module);
  }
  
  @Override
  public String[] getCommandParameters() {
    return new String[]{GUID, NAME, SIGNATURE, SIGNATUREFULLMESSAGE};
  }
  
  @Override
  public String getCommandName() {
    return REMOVETAG;
  }
  
  @Override
  public CommandResponse<String> execute(JSONObject json, ClientRequestHandlerInterface handler) throws InvalidKeyException, InvalidKeySpecException,
          JSONException, NoSuchAlgorithmException, SignatureException {
    String guid = json.getString(GUID);
    String tag = json.getString(NAME);
    // signature and message can be empty for unsigned cases
    String signature = json.optString(SIGNATURE, null);
    String message = json.optString(SIGNATUREFULLMESSAGE, null);
    GuidInfo guidInfo;
    if ((guidInfo = AccountAccess.lookupGuidInfo(guid, handler)) == null) {
      return new CommandResponse<String>(BADRESPONSE + " " + BADGUID + " " + guid);
    }
    return AccountAccess.removeTag(guidInfo, tag, guid, signature, message, handler);
  }
  
  @Override
  public String getCommandDescription() {
    return "Removes a tag from the guid. Must be signed by the guid. "
            + "Returns " + BADGUID + " if the GUID has not been registered.";
  }
}