/*
 * Copyright (C) 2014
 * University of Massachusetts
 * All Rights Reserved 
 *
 * Initial developer(s): Westy.
 */
package edu.umass.cs.gns.commands;

/**
 *
 * @author westy
 */
public class CommandDefs {

  private static String[] commands = new String[]{
    "edu.umass.cs.gns.commands.Append",
    "edu.umass.cs.gns.commands.AppendList",
    "edu.umass.cs.gns.commands.AppendListSelf",
    "edu.umass.cs.gns.commands.AppendListUnsigned",
    "edu.umass.cs.gns.commands.AppendListWithDuplication",
    "edu.umass.cs.gns.commands.AppendListWithDuplicationSelf",
    "edu.umass.cs.gns.commands.AppendListWithDuplicationUnsigned",
    "edu.umass.cs.gns.commands.AppendOrCreate",
    "edu.umass.cs.gns.commands.AppendOrCreateList",
    "edu.umass.cs.gns.commands.AppendOrCreateListSelf",
    "edu.umass.cs.gns.commands.AppendOrCreateListUnsigned",
    "edu.umass.cs.gns.commands.AppendSelf",
    "edu.umass.cs.gns.commands.AppendUnsigned",
    "edu.umass.cs.gns.commands.AppendWithDuplication",
    "edu.umass.cs.gns.commands.AppendWithDuplicationSelf",
    "edu.umass.cs.gns.commands.AppendWithDuplicationUnsigned",
    "edu.umass.cs.gns.commands.Clear",
    "edu.umass.cs.gns.commands.ClearSelf",
    "edu.umass.cs.gns.commands.ClearUnsigned",
    "edu.umass.cs.gns.commands.Create",
    "edu.umass.cs.gns.commands.CreateEmpty",
    "edu.umass.cs.gns.commands.CreateEmptySelf",
    "edu.umass.cs.gns.commands.CreateList",
    "edu.umass.cs.gns.commands.CreateListSelf",
    "edu.umass.cs.gns.commands.CreateSelf",
    "edu.umass.cs.gns.commands.Help",
    "edu.umass.cs.gns.commands.Read",
    "edu.umass.cs.gns.commands.ReadOne",
    "edu.umass.cs.gns.commands.ReadOneSelf",
    "edu.umass.cs.gns.commands.ReadOneUnsigned",
    "edu.umass.cs.gns.commands.ReadSelf",
    "edu.umass.cs.gns.commands.ReadUnsigned",
    "edu.umass.cs.gns.commands.Remove",
    "edu.umass.cs.gns.commands.RemoveField",
    "edu.umass.cs.gns.commands.RemoveFieldSelf",
    "edu.umass.cs.gns.commands.RemoveFieldUnsigned",
    "edu.umass.cs.gns.commands.RemoveList",
    "edu.umass.cs.gns.commands.RemoveListSelf",
    "edu.umass.cs.gns.commands.RemoveListUnsigned",
    "edu.umass.cs.gns.commands.RemoveSelf",
    "edu.umass.cs.gns.commands.RemoveUnsigned",
    "edu.umass.cs.gns.commands.Replace",
    "edu.umass.cs.gns.commands.ReplaceList",
    "edu.umass.cs.gns.commands.ReplaceListSelf",
    "edu.umass.cs.gns.commands.ReplaceListUnsigned",
    "edu.umass.cs.gns.commands.ReplaceOrCreate",
    "edu.umass.cs.gns.commands.ReplaceOrCreateList",
    "edu.umass.cs.gns.commands.ReplaceOrCreateListSelf",
    "edu.umass.cs.gns.commands.ReplaceOrCreateListUnsigned",
    "edu.umass.cs.gns.commands.ReplaceOrCreateSelf",
    "edu.umass.cs.gns.commands.ReplaceOrCreateUnsigned",
    "edu.umass.cs.gns.commands.ReplaceSelf",
    "edu.umass.cs.gns.commands.ReplaceUnsigned",
    "edu.umass.cs.gns.commands.Select",
    "edu.umass.cs.gns.commands.SelectNear",
    "edu.umass.cs.gns.commands.SelectQuery",
    "edu.umass.cs.gns.commands.SelectWithin",
    "edu.umass.cs.gns.commands.Substitute",
    "edu.umass.cs.gns.commands.SubstituteList",
    "edu.umass.cs.gns.commands.SubstituteListSelf",
    "edu.umass.cs.gns.commands.SubstituteListUnsigned",
    "edu.umass.cs.gns.commands.SubstituteSelf",
    "edu.umass.cs.gns.commands.SubstituteUnsigned",
    // Account
    "edu.umass.cs.gns.commands.account.AddAlias",
    "edu.umass.cs.gns.commands.account.AddGuid",
    "edu.umass.cs.gns.commands.account.LookupAccountRecord",
    "edu.umass.cs.gns.commands.account.LookupGuid",
    "edu.umass.cs.gns.commands.account.LookupGuidRecord",
    "edu.umass.cs.gns.commands.account.RegisterAccount",
    "edu.umass.cs.gns.commands.account.RegisterAccountWithoutGuid",
    "edu.umass.cs.gns.commands.account.RegisterAccountWithoutGuidOrPassword",
    "edu.umass.cs.gns.commands.account.RegisterAccountWithoutPassword",
    "edu.umass.cs.gns.commands.account.RemoveAccount",
    "edu.umass.cs.gns.commands.account.RemoveAlias",
    "edu.umass.cs.gns.commands.account.RemoveGuid",
    "edu.umass.cs.gns.commands.account.RetrieveAliases",
    "edu.umass.cs.gns.commands.account.SetPassword",
    "edu.umass.cs.gns.commands.account.VerifyAccount",
    // ACL
    "edu.umass.cs.gns.commands.acl.AclAdd",
    "edu.umass.cs.gns.commands.acl.AclAddSelf",
    "edu.umass.cs.gns.commands.acl.AclRemove",
    "edu.umass.cs.gns.commands.acl.AclRemoveSelf",
    "edu.umass.cs.gns.commands.acl.AclRetrieve",
    "edu.umass.cs.gns.commands.acl.AclRetrieveSelf",
    // Group
    "edu.umass.cs.gns.commands.group.AddMembersToGroup",
    "edu.umass.cs.gns.commands.group.AddMembersToGroupSelf",
    "edu.umass.cs.gns.commands.group.AddToGroup",
    "edu.umass.cs.gns.commands.group.AddToGroupSelf",
    "edu.umass.cs.gns.commands.group.GetGroupMembers",
    "edu.umass.cs.gns.commands.group.GetGroupMembersSelf",
    "edu.umass.cs.gns.commands.group.GrantMembership",
    "edu.umass.cs.gns.commands.group.GrantMemberships",
    "edu.umass.cs.gns.commands.group.RemoveFromGroup",
    "edu.umass.cs.gns.commands.group.RemoveFromGroupSelf",
    "edu.umass.cs.gns.commands.group.RemoveMembersFromGroup",
    "edu.umass.cs.gns.commands.group.RemoveMembersFromGroupSelf",
    "edu.umass.cs.gns.commands.group.RequestJoinGroup",
    "edu.umass.cs.gns.commands.group.RequestLeaveGroup",
    "edu.umass.cs.gns.commands.group.RetrieveGroupJoinRequests",
    "edu.umass.cs.gns.commands.group.RetrieveGroupLeaveRequests",
    "edu.umass.cs.gns.commands.group.RevokeMembership",
    "edu.umass.cs.gns.commands.group.RevokeMemberships",
    //Admin
    "edu.umass.cs.gns.commands.admin.Admin",
    "edu.umass.cs.gns.commands.admin.GetParameter",
    "edu.umass.cs.gns.commands.admin.SetParameter",
    "edu.umass.cs.gns.commands.admin.ListParameters",
    "edu.umass.cs.gns.commands.admin.DeleteAllRecords",
    "edu.umass.cs.gns.commands.admin.ResetDatabase",
    "edu.umass.cs.gns.commands.admin.ClearCache",
    "edu.umass.cs.gns.commands.admin.DumpCache",
    "edu.umass.cs.gns.commands.admin.ChangeLogLevel",
    "edu.umass.cs.gns.commands.admin.AddTag",
    "edu.umass.cs.gns.commands.admin.RemoveTag",
    "edu.umass.cs.gns.commands.admin.ClearTagged",
    "edu.umass.cs.gns.commands.admin.GetTagged",
    "edu.umass.cs.gns.commands.admin.Dump",
    "edu.umass.cs.gns.commands.admin.PingTable",
    "edu.umass.cs.gns.commands.admin.RTT"};

  public static String[] getCommandDefs() {
    return commands;
  }
}
