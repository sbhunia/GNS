package edu.umass.cs.gns.reconfiguration;
/**
@author V. Arun
 */
/* A reconfigurable request can also be a stop request and comes with
 * an epoch number. The application must be aware of both of these.
 */
public interface InterfaceReconfigurableRequest extends InterfaceRequest {
	public int getEpochNumber();
	public boolean isStop();
}