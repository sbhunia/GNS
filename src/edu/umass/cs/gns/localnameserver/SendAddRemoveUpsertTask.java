/*
 * Copyright (C) 2013
 * University of Massachusetts
 * All Rights Reserved 
 *
 * Initial developer(s): Abhigyan.
 */
package edu.umass.cs.gns.localnameserver;

import edu.umass.cs.gns.exceptions.CancelExecutorTaskException;
import edu.umass.cs.gns.main.GNS;
import edu.umass.cs.gns.main.StartLocalNameServer;
import edu.umass.cs.gns.nsdesign.packet.*;
import edu.umass.cs.gns.util.NSResponseCode;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashSet;
import java.util.TimerTask;

/**
 * Sends three types of messages (with retries): AddRecordPacket, RemoveRecordPacket, and
 * UpdateAddressPacket with upsert to replica controllers. These messages are sent one by one to all
 * replica controllers in order of their distance until
 * (1) local name server receives a response from one of the primary replicas.
 * (2) no response is received until {@code maxQueryWaitTime}. In this case, an error response is sent to client.
 *
 * User: abhigyan
 * Date: 8/9/13
 * Time: 4:59 PM
 */
public class SendAddRemoveUpsertTask extends TimerTask {

  private String name;
  private BasicPacket packet;
  private int lnsRequestID;
  private HashSet<Integer> replicaControllersQueried;
  private int timeoutCount = -1;
  private long requestRecvdTime;

  public SendAddRemoveUpsertTask(BasicPacket packet, String name, long requestRecvdTime) {
    this.name = name;
    this.packet = packet;
    this.replicaControllersQueried = new HashSet<Integer>();
    this.requestRecvdTime = requestRecvdTime;
  }

  @Override
  public void run() {
    try{
      timeoutCount = timeoutCount + 1;
      if (StartLocalNameServer.debugMode) {
        GNS.getLogger().fine("ENTER name = " + getName() + " timeout = " + getTimeoutCount());
      }

      if (isResponseReceived() || isMaxWaitTimeExceeded()) {
        throw new CancelExecutorTaskException();
      }

      int nameServerID = selectNS();

      sendToNS(nameServerID);

    }catch (Exception e) {
      // we catch all exceptions here because executor service will not print any exception messages
      if (e.getClass().equals(CancelExecutorTaskException.class)) {
      // this exception is only way to terminate this task from repeat execution
        throw new RuntimeException();
      }
      GNS.getLogger().severe("Exception Exception Exception ... ");
      e.printStackTrace();
    }
  }

  private boolean isResponseReceived() {
    if (getTimeoutCount() > 0 && LocalNameServer.getUpdateInfo(getLnsRequestID()) == null) {
      if (StartLocalNameServer.debugMode) {
        GNS.getLogger().fine("UpdateInfo not found. Either update complete or invalid actives. Cancel task.");
      }
      return true;
    }
    return false;
  }

  private boolean isMaxWaitTimeExceeded() {

    if (getTimeoutCount() > 0 && System.currentTimeMillis() - getRequestRecvdTime() > StartLocalNameServer.maxQueryWaitTime) {
      UpdateInfo updateInfo = LocalNameServer.removeUpdateInfo(getLnsRequestID());

      if (updateInfo == null) {
        GNS.getLogger().warning("TIME EXCEEDED: UPDATE INFO IS NULL!!: " + getPacket());
        return true;
      }
      GNS.getLogger().fine("Request FAILED no response until MAX-wait time: " + getLnsRequestID() + " name = " + getName());
      ConfirmUpdatePacket confirmPkt = getConfirmFailurePacket(getPacket());
      try {
        if (confirmPkt != null) {
          Update.sendConfirmUpdatePacketBackToSource(confirmPkt);
        } else {
          GNS.getLogger().warning("ERROR: Confirm update is NULL. Cannot sent response to client.");
        }
      } catch (JSONException e) {
        GNS.getLogger().severe("Problem converting packet to JSON: " + e);
      }
      String updateStats = updateInfo.getUpdateFailedStats(getReplicaControllersQueried(), LocalNameServer.getNodeID(), getLnsRequestID(), -1);
      GNS.getStatLogger().info(updateStats);

      return true;
    }
    return false;
  }

  private int selectNS() {

    int nameServerID = LocalNameServer.getClosestReplicaController(getName(), getReplicaControllersQueried());

    if (nameServerID == -1) {
      GNS.getLogger().fine("ERROR: No more primaries left to query. RETURN. Primaries queried " + getReplicaControllersQueried());
    } else {
      getReplicaControllersQueried().add(nameServerID);
    }
    return nameServerID;
  }

  private void sendToNS(int nameServerID) {

    if (nameServerID == -1) return;

    replicaControllersQueried.add(nameServerID);

    if (getTimeoutCount() == 0) {
      lnsRequestID = LocalNameServer.addUpdateInfo(getName(), nameServerID, getRequestRecvdTime(), 0, packet);
      if (StartLocalNameServer.debugMode) GNS.getLogger().fine("Add/remove/upsert Info Added: Id = " + getLnsRequestID());
      updatePacketWithRequestID(getPacket(), getLnsRequestID());
    }
    // create the packet that we'll send to the primary

    if (StartLocalNameServer.debugMode) GNS.getLogger().fine("Sending request to node: " + nameServerID);

    // and send it off
    try {
      JSONObject jsonToSend = getPacket().toJSONObject();
      LocalNameServer.sendToNS(jsonToSend, nameServerID);

      if (StartLocalNameServer.debugMode) GNS.getLogger().fine(" Send add/remove/upsert to: " + nameServerID + " Name:" + getName() + " Id:" + getLnsRequestID() +
              " Time:" + System.currentTimeMillis() + " --> " + jsonToSend.toString());
    } catch (JSONException e) {
      e.printStackTrace();
    }
  }

  // This code screams for using a super class other than BasicPacket
  private ConfirmUpdatePacket getConfirmFailurePacket(BasicPacket packet) {
    ConfirmUpdatePacket confirm;
    switch (packet.getType()) {
      case ADD_RECORD:
        confirm = new ConfirmUpdatePacket(NSResponseCode.ERROR, (AddRecordPacket) packet);
        return confirm;
      case REMOVE_RECORD:
        confirm = new ConfirmUpdatePacket(NSResponseCode.ERROR, (RemoveRecordPacket) packet);
        return confirm;
      case UPDATE:
        confirm = ConfirmUpdatePacket.createFailPacket((UpdatePacket) packet, NSResponseCode.ERROR);
        return confirm;
    }
    return null;
  }

  // This code screams for using a super class other than BasicPacket
  private void updatePacketWithRequestID(BasicPacket packet, int requestID) {

    switch (packet.getType()) {
      case ADD_RECORD:
        AddRecordPacket addRecordPacket = (AddRecordPacket) packet;
        addRecordPacket.setLNSRequestID(requestID);
        addRecordPacket.setLocalNameServerID(LocalNameServer.getNodeID());
        break;
      case REMOVE_RECORD:
        RemoveRecordPacket removeRecordPacket = (RemoveRecordPacket) packet;
        removeRecordPacket.setLNSRequestID(requestID);
        removeRecordPacket.setLocalNameServerID(LocalNameServer.getNodeID());
        break;
      case UPDATE:
        UpdatePacket updateAddressPacket = (UpdatePacket) packet;
        updateAddressPacket.setLNSRequestID(requestID);
        updateAddressPacket.setLocalNameServerId(LocalNameServer.getNodeID());
        break;
    }

  }

  /**
   * @return the name
   */
  public String getName() {
    return name;
  }

  /**
   * @return the packet
   */
  public BasicPacket getPacket() {
    return packet;
  }

  /**
   * @return the lnsRequestID
   */
  public int getLnsRequestID() {
    return lnsRequestID;
  }

  /**
   * @return the replicaControllersQueried
   */
  public HashSet<Integer> getReplicaControllersQueried() {
    return replicaControllersQueried;
  }

  /**
   * @return the timeoutCount
   */
  public int getTimeoutCount() {
    return timeoutCount;
  }

  /**
   * @return the requestRecvdTime
   */
  public long getRequestRecvdTime() {
    return requestRecvdTime;
  }

}
