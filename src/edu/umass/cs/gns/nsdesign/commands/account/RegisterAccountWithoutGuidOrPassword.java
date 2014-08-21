/*
 * Copyright (C) 2014
 * University of Massachusetts
 * All Rights Reserved 
 *
 * Initial developer(s): Westy.
 */
package edu.umass.cs.gns.nsdesign.commands.account;

import static edu.umass.cs.gns.clientsupport.Defs.*;
import edu.umass.cs.gns.nsdesign.commands.NSCommandModule;

/**
 *
 * @author westy
 */
@Deprecated
public class RegisterAccountWithoutGuidOrPassword extends RegisterAccount {

  public RegisterAccountWithoutGuidOrPassword(NSCommandModule module) {
    super(module);
  }

  @Override
  public String[] getCommandParameters() {
    return new String[]{NAME, PUBLICKEY};
  }

  @Override
  public String getCommandName() {
    return REGISTERACCOUNT;
  }

  @Override
  public String getCommandDescription() {
    return "Associates the GUID supplied with the human readable name "
            + "(a human readable name for the user) and the publickey.";
           

  }
}
