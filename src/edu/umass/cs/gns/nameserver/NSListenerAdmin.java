package edu.umass.cs.gns.nameserver;

import edu.umass.cs.gns.client.AccountAccess;
import edu.umass.cs.gns.client.GuidInfo;
import edu.umass.cs.gns.main.GNS;
import edu.umass.cs.gns.nameserver.replicacontroller.ReplicaControllerRecord;
import edu.umass.cs.gns.packet.ActiveNameServerInfoPacket;
import edu.umass.cs.gns.packet.AdminRequestPacket;
import edu.umass.cs.gns.packet.DumpRequestPacket;
import edu.umass.cs.gns.packet.Packet;
import edu.umass.cs.gns.statusdisplay.StatusClient;
import edu.umass.cs.gns.util.ConfigFileInfo;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import edu.umass.cs.gns.paxos.PaxosManager;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Set;
import java.util.logging.Level;

/**
 * *************************************************************
 * This class implements a thread that returns a list of active name servers for a name. The thread waits for request packet over a
 * UDP socket and sends a response containing the current active nameserver for a name record.
 *
 * @author Hardeep Uppal ************************************************************
 */
public class NSListenerAdmin extends Thread {

  /**
   * Socket over which active name server request arrive *
   */
  private ServerSocket serverSocket;

  /**
   * *************************************************************
   * Creates a new listener thread for handling response packet
   *
   * @throws IOException ************************************************************
   */
  public NSListenerAdmin() throws IOException {
    super("NSListenerAdmin");
    this.serverSocket = new ServerSocket(ConfigFileInfo.getNSAdminRequestPort(NameServer.nodeID));
  }

  /**
   * *************************************************************
   * Start executing the thread. ************************************************************
   */
  @Override
  public void run() {
    int numRequest = 0;
    GNS.getLogger().info("NS Node " + NameServer.nodeID + " starting Admin Request Server on port " + serverSocket.getLocalPort());
    while (true) {
      try {
        Socket socket = serverSocket.accept();

        //Read the packet from the input stream
        JSONObject incomingJSON = Packet.getJSONObjectFrame(socket);
        switch (Packet.getPacketType(incomingJSON)) {

          case ACTIVE_NAMESERVER_INFO:

            ActiveNameServerInfoPacket activeNSInfoPacket = new ActiveNameServerInfoPacket(incomingJSON);

            GNS.getLogger().fine("NSListenrAdmin:: ListenerActiveNameServerInfo: Received RequestNum:" + (++numRequest) + " --> " + incomingJSON.toString());

            //ReplicaControllerRecord nameRecordPrimary = NameServer.getNameRecordPrimaryLazy(activeNSInfoPacket.getName());
            ReplicaControllerRecord nameRecordPrimary = NameServer.getNameRecordPrimary(activeNSInfoPacket.getName());
            if (nameRecordPrimary != null && nameRecordPrimary.isPrimaryReplica()) {
              sendactiveNameServerInfo(activeNSInfoPacket, socket, numRequest, nameRecordPrimary.copyActiveNameServers());
            }
//            if (!NameServer.containsName(activeNSInfoPacket.getName()//, activeNSInfoPacket.getRecordKey()
//                    )) {
            // This name server does not contain the name
            // If this is not a primary name server for this name we ignore the request
//                            Set<Integer> primaryNameServers = HashFunction.getPrimaryReplicas(activeNSInfoPacket.getName());
//                            if (!primaryNameServers.contains(NameServer.nodeID)) {
//                                socket.close();
//                                continue;
//                            }
//                            if (GNS.USELEGACYDNS) {
//                                // Abhigyan: Commenting this out for now. We do not use ReplicateRecordPacket anymore
//                                // Gin up a record using the legacy DNS
////                NameRecord record = new NameRecord(activeNSInfoPacket.getName()//, activeNSInfoPacket.getRecordKey()
////                        );
////                NameServer.addNameRecord(record);
////                //Send the response packet with the current active name server
////                sendactiveNameServerInfo(activeNSInfoPacket, socket, numRequest);
////                //Inform the primaries about this record
////                ReplicateRecordPacket replicatePacket = new ReplicateRecordPacket(record, NameServer.nodeID);
////                Packet.multicastTCP(primaryNameServers, replicatePacket.toJSONObject(),
////                        2, GNS.PortType.REPLICATION_PORT, NameServer.nodeID);
////                StatusClient.sendTrafficStatus(NameServer.nodeID, primaryNameServers,
////                        NameServer.nodeID, GNS.PortType.REPLICATION_PORT, replicatePacket.getType(), activeNSInfoPacket.getName()//, activeNSInfoPacket.getRecordKey()
////                        );
//                            }
//                        } else if (NameServer.isPrimaryNameServer(activeNSInfoPacket.getName()//, activeNSInfoPacket.getRecordKey()
//                        )) {
//                            //Send the response packet with the current active name server
//                            sendactiveNameServerInfo(activeNSInfoPacket, socket, numRequest);
//                        }
            break;

          case DUMP_REQUEST:

            DumpRequestPacket dumpRequestPacket = new DumpRequestPacket(incomingJSON);

            dumpRequestPacket.setPrimaryNameServer(NameServer.nodeID);

            StatusClient.sendStatus(NameServer.nodeID, "Dumping records");
            JSONArray jsonArray = new JSONArray();
            // SPECIAL CASE: if there is an argument it is a TAGNAME and we return the name of all the
            // records that have that tag
            if (dumpRequestPacket.getArgument() != null) {
              String tag = dumpRequestPacket.getArgument();
              for (NameRecord nameRecord : NameServer.getAllNameRecords()) {
                //for (NameRecord nameRecord : DBNameRecord.getAllNameRecords()) {
                // a bit of a hack here
                if (nameRecord.containsKey(AccountAccess.GUID_INFO)) {
                  GuidInfo userInfo = new GuidInfo(nameRecord.get(AccountAccess.GUID_INFO));
                  if (userInfo.containsTag(tag)) {
                    jsonArray.put(nameRecord.getName());
                  }
                }
              }
              // OTHERWISE WE DO THE DUMPY THING AND RETURN THE RECORD
            } else {
              for (NameRecord nameRecord : NameServer.getAllNameRecords()) {
                //for (NameRecord nameRecord : DBNameRecord.getAllNameRecords()) {
                jsonArray.put(nameRecord.toJSONObject());
              }
            }
            if (GNS.getLogger().isLoggable(Level.FINER)) {
              GNS.getLogger().finer("NSListenrAdmin for " + NameServer.nodeID + " is " + jsonArray.toString());
            }
            dumpRequestPacket.setJsonArray(jsonArray);
            Packet.sendTCPPacket(dumpRequestPacket.toJSONObject(), dumpRequestPacket.getLocalNameServer(), GNS.PortType.LNS_ADMIN_PORT);
            //Packet.sendTCPPacket(dumpRequestPacket.toJSONObject(), socket);

            if (GNS.getLogger().isLoggable(Level.FINER)) {
              GNS.getLogger().finer("NSListenrAdmin: Response to id:" + dumpRequestPacket.getId() + " --> " + dumpRequestPacket.toString());
            }

            break;
          case ADMIN_REQUEST:
            AdminRequestPacket adminRequestPacket = new AdminRequestPacket(incomingJSON);
            switch (adminRequestPacket.getOperation()) {
              case DELETEALLRECORDS:
                GNS.getLogger().fine("NSListenerAdmin (" + NameServer.nodeID + ") : Handling DELETEALLRECORDS request");
                long startTime = System.currentTimeMillis();
                int cnt = 0;
                for (NameRecord nameRecord : NameServer.getAllNameRecords()) {
                  //for (NameRecord nameRecord : DBNameRecord.getAllNameRecords()) {
                  NameServer.removeNameRecord(nameRecord.getName());
                  //DBNameRecord.removeNameRecord(nameRecord.getName());
                  cnt++;
                }
                GNS.getLogger().fine("NSListenerAdmin (" + NameServer.nodeID + ") : Deleting " + cnt + " records took "
                        + (System.currentTimeMillis() - startTime) + "ms");
                break;
              case RESETDB:
                GNS.getLogger().fine("NSListenerAdmin (" + NameServer.nodeID + ") : Handling RESETDB request");
                PaxosManager.resetAll();
                NameServer.resetDB();
                break;
                
//              case DELETEALLGUIDRECORDS:
//                // delete all the records that have a name (GUID) given by the argument in the packet
//                String name = adminRequestPacket.getArgument();
//                if (name != null) {
//                  GNS.getLogger().fine("NSListenerAdmin (" + NameServer.nodeID + ") : Handling delete all name " + name + " request");
//                  startTime = System.currentTimeMillis();
//                  cnt = 0;
//                  for (NameRecord nameRecord : NameServer.getAllNameRecords()) {
//                    if (name.equals(nameRecord.getName())) {
//                      NameServer.removeNameRecord(nameRecord.getName()//, nameRecord.getRecordKey()
//                              );
//                      cnt++;
//                    }
//                  }
//                  GNS.getLogger().fine("NSListenerAdmin (" + NameServer.nodeID + ") : Deleting " + cnt + " records took "
//                          + (System.currentTimeMillis() - startTime) + "ms");
//                }
//                break;
              case CLEARCACHE:
                // shouldn't ever get this
                GNS.getLogger().warning("NSListenerAdmin (" + NameServer.nodeID + ") : Ignoring CLEARCACHE request");
                break;

            }
            break;

          case STATUS_INIT:
            StatusClient.handleStatusInit(socket.getInetAddress());
            StatusClient.sendStatus(NameServer.nodeID, "NS Ready");
            break;

        }

        socket.close();
      } catch (Exception e) {
        e.printStackTrace();
      }
    }

  }

  /**
   * *************************************************************
   * Sends active name server information to the sender
   *
   * @param activeNSInfoPacket
   * @param socket
   * @param numRequest
   * @throws IOException
   * @throws JSONException ************************************************************
   */
  private void sendactiveNameServerInfo(ActiveNameServerInfoPacket activeNSInfoPacket,
          Socket socket, int numRequest, Set<Integer> activeNameServers) throws IOException, JSONException {
    activeNSInfoPacket.setActiveNameServers(activeNameServers);
    activeNSInfoPacket.setPrimaryNameServer(NameServer.nodeID);
    Packet.sendTCPPacket(activeNSInfoPacket.toJSONObject(), socket);
    GNS.getLogger().fine("NSListenrAdmin: Response RequestNum:" + numRequest + " --> " + activeNSInfoPacket.toString());
  }
}