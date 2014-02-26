/*
 * Copyright (C) 2014
 * University of Massachusetts
 * All Rights Reserved 
 *
 * Initial developer(s): Westy.
 */
package edu.umass.cs.gns.commands;

import edu.umass.cs.gns.client.AccountAccess;
import edu.umass.cs.gns.client.FieldAccess;
import edu.umass.cs.gns.client.GuidInfo;
import edu.umass.cs.gns.client.MetaDataTypeName;
import edu.umass.cs.gns.client.UpdateOperation;
import edu.umass.cs.gns.clientprotocol.AccessSupport;
import static edu.umass.cs.gns.clientprotocol.Defs.*;
import edu.umass.cs.gns.util.JSONUtils;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author westy
 */
public abstract class AbstractUpdateList extends GnsCommand {

  public AbstractUpdateList(CommandModule module) {
    super(module);
  }

  public abstract UpdateOperation getUpdateOperation();

  @Override
  public String execute(JSONObject json) throws InvalidKeyException, InvalidKeySpecException,
          JSONException, NoSuchAlgorithmException, SignatureException {
    String guid = json.getString(GUID);
    String field = json.getString(FIELD);
    String value = json.getString(VALUE);
    String oldValue = json.optString(OLDVALUE, null);
    String writer = json.optString(WRITER, guid);
    String signature = json.optString(SIGNATURE, null);
    String message = json.optString(SIGNATUREFULLMESSAGE, null);
    if (FieldAccess.update(guid, field,
            JSONUtils.JSONArrayToResultValue(new JSONArray(value)),
            oldValue != null ? JSONUtils.JSONArrayToResultValue(new JSONArray(oldValue)) : null,
            getUpdateOperation(),
            writer, signature, message)) {
      return OKRESPONSE;
    } else {
      return BADRESPONSE + " " + BADFIELD + " " + field;
    }

  }
}