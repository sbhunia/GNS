
package edu.umass.cs.gnsserver.localnameserver;

import java.util.HashSet;
import java.util.Set;
import java.util.logging.Logger;
import edu.umass.cs.nio.GenericMessagingTask;
import edu.umass.cs.protocoltask.ProtocolEvent;
import edu.umass.cs.protocoltask.ProtocolExecutor;
import edu.umass.cs.protocoltask.ProtocolTask;
import edu.umass.cs.protocoltask.SchedulableProtocolTask;
import edu.umass.cs.reconfiguration.reconfigurationpackets.RequestActiveReplicas;
import edu.umass.cs.reconfiguration.reconfigurationpackets.ReconfigurationPacket.PacketType;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;


public class SendCreateDelete implements SchedulableProtocolTask<InetSocketAddress, PacketType, String> {

  private final long RESTART_PERIOD = 1000;

  private final LNSRequestInfo lnsRequestInfo;
  private final RequestHandlerInterface handler;
  private final String key;
  private final List<InetSocketAddress> reconfigurators;
  private int requestCount = 0; // number of times we have requested


  public static final Logger LOG = Logger.getLogger(SendCreateDelete.class.getName());


  public SendCreateDelete(LNSRequestInfo lnsRequestInfo,
          RequestHandlerInterface handler) {

    this.lnsRequestInfo = lnsRequestInfo;
    this.handler = handler;
    reconfigurators = new ArrayList<>(handler.getNodeConfig().getReplicatedReconfigurators(lnsRequestInfo.getServiceName()));
    this.key = this.refreshKey();
    LOG.log(Level.FINE,
            "~~~~~~~~~~~~~~~~~~~~~~~~ Request actives starting: {0}", key);

  }


  @Override
  public GenericMessagingTask<InetSocketAddress, ?>[] restart() {
    if (this.amObviated()) {
      ProtocolExecutor.cancel(this);
    }
    LOG.log(Level.FINE, "~~~~~~~~~~~~~~~~~~~~~~~~{0} re-sending ", this.refreshKey());
    return start();
  }

  private boolean amObviated() {
    if (handler.getActivesIfValid(lnsRequestInfo.getServiceName()) != null) {
      return true;
    } else if (requestCount >= reconfigurators.size()) {
      LOG.log(Level.FINE,
              "~~~~~~~~~~~~~~~~~~~~~~~~{0} No answer, using defaults", this.refreshKey());
      return true;
    } else {
      return false;
    }
  }


  @Override
  public GenericMessagingTask<InetSocketAddress, ?>[] start() {
    RequestActiveReplicas packet = new RequestActiveReplicas(handler.getNodeAddress(),
            lnsRequestInfo.getServiceName(), 0);

    int reconfigIndex = requestCount % reconfigurators.size();
    LOG.log(Level.FINE, "~~~~~~~~~~~~~~~~~~~~~~~~{0} Sending to {1} {2}",
            new Object[]{this.refreshKey(), reconfigurators.get(reconfigIndex), packet});
    GenericMessagingTask<InetSocketAddress, ?> mtasks[]
            = new GenericMessagingTask<>(reconfigurators.get(reconfigIndex), packet).toArray();
    requestCount++;
    return mtasks;
  }

  private String refreshKey() {
    return lnsRequestInfo.getServiceName() + " | " + Long.toString(lnsRequestInfo.getLNSReqID());
  }


  @Override
  public Set<PacketType> getEventTypes() {
    return new HashSet<>();
  }


  @Override
  public String getKey() {
    return this.key;
  }


  @Override
  public GenericMessagingTask<InetSocketAddress, ?>[] handleEvent(
          ProtocolEvent<PacketType, String> event,
          ProtocolTask<InetSocketAddress, PacketType, String>[] ptasks) {
    return null;
  }

  @Override
  public String toString() {
    return this.getClass().getSimpleName() + " " + lnsRequestInfo.getServiceName() + " " + lnsRequestInfo.getLNSReqID();
  }


  @Override
  public long getPeriod() {
    return RESTART_PERIOD;
  }
}
