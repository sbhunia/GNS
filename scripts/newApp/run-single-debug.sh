#
java -ea -cp ../../dist/GNS.jar edu.umass.cs.gns.newApp.AppReconfigurableNode -test -nsfile ../../conf/single-server-info -consoleOutputLevel INFO  -demandProfileClass edu.umass.cs.gns.newApp.NullDemandProfile -debugAPP -debugAR -debugPaxos -debugRecon -debugMisc &
#java -ea -cp ../../dist/GNS.jar edu.umass.cs.gns.newApp.clientCommandProcessor.ClientCommandProcessor -port 20309 -nsfile ../../conf/single-server-info -activeReplicaID frank -consoleOutputLevel INFO -debug &
java -ea -cp ../../dist/GNS.jar edu.umass.cs.gns.localnameserver.LocalNameServer -nsfile ../../conf/single-server-info -consoleOutputLevel INFO -debug &
