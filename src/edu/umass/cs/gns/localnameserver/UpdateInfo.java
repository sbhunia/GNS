package edu.umass.cs.gns.localnameserver;

import edu.umass.cs.gns.nsdesign.nodeconfig.NodeId;
import edu.umass.cs.gns.nsdesign.packet.*;
import edu.umass.cs.gns.util.NSResponseCode;
import java.net.InetSocketAddress;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * This class stores information not just update requests, but also
 * add and remove requests transmitted by the local name
 * server. Extends {@link edu.umass.cs.gns.localnameserver.RequestInfo}.
 *
 * @author abhigyan
 */
public class UpdateInfo extends RequestInfo {

  /**
   * ID of the name server where update was sent *
   */
  private NodeId<String> nameserverID;

  private BasicPacket basicPacket;

  public UpdateInfo(int lnsRequestID, String name, NodeId<String> nameserverId, BasicPacket packet) {
    this.lnsReqID = lnsRequestID;
    this.name = name;
    this.startTime = System.currentTimeMillis();
    this.nameserverID = nameserverId;
    this.numLookupActives = 0;
    this.basicPacket = packet;
    this.requestType = packet.getType();
  }

  public synchronized void setNameserverID(NodeId<String> nameserverID) {
    this.nameserverID = nameserverID;
  }

  @Override
  public synchronized String getLogString() {
    String success = isSuccess() ? "Success" : "Failed";
    if (requestType.equals(Packet.PacketType.ADD_RECORD)) {
      success += "-Add";
    } else if (requestType.equals(Packet.PacketType.REMOVE_RECORD)) {
      success += "-Remove";
    } else if (requestType.equals(Packet.PacketType.UPDATE)) {
      success += "-Update";
    }
    return getFinalString(success, name, getResponseLatency(), 0, nameserverID, LocalNameServer.getAddress(),
            getLnsReqID(), numLookupActives, System.currentTimeMillis(), getEventCodesString());
  }

  private String getFinalString(String queryStatus, String name, long latency, int numTransmissions,
          NodeId<String> nameServerID, InetSocketAddress address, int requestID, int numInvalidActiveError,
          long curTime, String eventCodes) {
    return queryStatus + "\t" + name + "\t" + latency + "\t" + numTransmissions + "\t" + nameServerID.get() + "\t"
            + address.toString() + "\t" + requestID + "\t" + numInvalidActiveError + "\t" + curTime + "\t" + eventCodes;
  }

  @Override
  public synchronized JSONObject getErrorMessage() {
    ConfirmUpdatePacket confirm = null;
    switch (basicPacket.getType()) {
      case ADD_RECORD:
        confirm = new ConfirmUpdatePacket(NSResponseCode.ERROR, (AddRecordPacket) basicPacket);
        break;
      case REMOVE_RECORD:
        confirm = new ConfirmUpdatePacket(NSResponseCode.ERROR, (RemoveRecordPacket) basicPacket);
        break;
      case UPDATE:
        confirm = ConfirmUpdatePacket.createFailPacket((UpdatePacket) basicPacket, NSResponseCode.ERROR);
        break;
    }
    try {
      return (confirm != null) ? confirm.toJSONObject() : null;
    } catch (JSONException e) {
      e.printStackTrace();
    }
    return null;
  }

  /**
   * @return the basicPacket
   */
  public synchronized BasicPacket getUpdatePacket() {
    return basicPacket;
  }

}
