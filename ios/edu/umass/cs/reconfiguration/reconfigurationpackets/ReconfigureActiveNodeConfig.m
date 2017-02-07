//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/reconfiguration/reconfigurationpackets/ReconfigureActiveNodeConfig.java
//

#include "J2ObjC_source.h"
#include "edu/umass/cs/nio/interfaces/Stringifiable.h"
#include "edu/umass/cs/reconfiguration/AbstractReconfiguratorDB.h"
#include "edu/umass/cs/reconfiguration/reconfigurationpackets/ReconfigurationPacket.h"
#include "edu/umass/cs/reconfiguration/reconfigurationpackets/ReconfigureActiveNodeConfig.h"
#include "edu/umass/cs/reconfiguration/reconfigurationpackets/ServerReconfigurationPacket.h"
#include "java/net/InetSocketAddress.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/json/JSONObject.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig

- (instancetype)initWithId:(id)initiator
                    withId:(id)nodeID
withJavaNetInetSocketAddress:(JavaNetInetSocketAddress *)sockAddr {
  EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig_initWithId_withId_withJavaNetInetSocketAddress_(self, initiator, nodeID, sockAddr);
  return self;
}

- (instancetype)initWithId:(id)initiator
           withJavaUtilMap:(id<JavaUtilMap>)newlyAddedNodes
           withJavaUtilSet:(id<JavaUtilSet>)deletedNodes {
  EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig_initWithId_withJavaUtilMap_withJavaUtilSet_(self, initiator, newlyAddedNodes, deletedNodes);
  return self;
}

- (instancetype)initWithOrgJsonJSONObject:(OrgJsonJSONObject *)json
 withEduUmassCsNioInterfacesStringifiable:(id<EduUmassCsNioInterfacesStringifiable>)unstringer {
  EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(self, json, unstringer);
  return self;
}

- (NSString *)getServiceName {
  return [((EduUmassCsReconfigurationAbstractReconfiguratorDB_RecordNames *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationAbstractReconfiguratorDB_RecordNames, AR_NODES))) description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, 3, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, 5, 6, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithId:withId:withJavaNetInetSocketAddress:);
  methods[1].selector = @selector(initWithId:withJavaUtilMap:withJavaUtilSet:);
  methods[2].selector = @selector(initWithOrgJsonJSONObject:withEduUmassCsNioInterfacesStringifiable:);
  methods[3].selector = @selector(getServiceName);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSObject;LNSObject;LJavaNetInetSocketAddress;", "(TNodeIDType;TNodeIDType;Ljava/net/InetSocketAddress;)V", "LNSObject;LJavaUtilMap;LJavaUtilSet;", "(TNodeIDType;Ljava/util/Map<TNodeIDType;Ljava/net/InetSocketAddress;>;Ljava/util/Set<TNodeIDType;>;)V", "LOrgJsonJSONObject;LEduUmassCsNioInterfacesStringifiable;", "LOrgJsonJSONException;", "(Lorg/json/JSONObject;Ledu/umass/cs/nio/interfaces/Stringifiable<TNodeIDType;>;)V", "<NodeIDType:Ljava/lang/Object;>Ledu/umass/cs/reconfiguration/reconfigurationpackets/ServerReconfigurationPacket<TNodeIDType;>;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig = { "ReconfigureActiveNodeConfig", "edu.umass.cs.reconfiguration.reconfigurationpackets", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, 7, -1 };
  return &_EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig;
}

@end

void EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig_initWithId_withId_withJavaNetInetSocketAddress_(EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig *self, id initiator, id nodeID, JavaNetInetSocketAddress *sockAddr) {
  EduUmassCsReconfigurationReconfigurationpacketsServerReconfigurationPacket_initWithId_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withId_withJavaNetInetSocketAddress_(self, initiator, JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType, RECONFIGURE_ACTIVE_NODE_CONFIG), nodeID, sockAddr);
}

EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig *new_EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig_initWithId_withId_withJavaNetInetSocketAddress_(id initiator, id nodeID, JavaNetInetSocketAddress *sockAddr) {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig, initWithId_withId_withJavaNetInetSocketAddress_, initiator, nodeID, sockAddr)
}

EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig *create_EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig_initWithId_withId_withJavaNetInetSocketAddress_(id initiator, id nodeID, JavaNetInetSocketAddress *sockAddr) {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig, initWithId_withId_withJavaNetInetSocketAddress_, initiator, nodeID, sockAddr)
}

void EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig_initWithId_withJavaUtilMap_withJavaUtilSet_(EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig *self, id initiator, id<JavaUtilMap> newlyAddedNodes, id<JavaUtilSet> deletedNodes) {
  EduUmassCsReconfigurationReconfigurationpacketsServerReconfigurationPacket_initWithId_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withJavaUtilMap_withJavaUtilSet_(self, initiator, JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType, RECONFIGURE_ACTIVE_NODE_CONFIG), newlyAddedNodes, deletedNodes);
}

EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig *new_EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig_initWithId_withJavaUtilMap_withJavaUtilSet_(id initiator, id<JavaUtilMap> newlyAddedNodes, id<JavaUtilSet> deletedNodes) {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig, initWithId_withJavaUtilMap_withJavaUtilSet_, initiator, newlyAddedNodes, deletedNodes)
}

EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig *create_EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig_initWithId_withJavaUtilMap_withJavaUtilSet_(id initiator, id<JavaUtilMap> newlyAddedNodes, id<JavaUtilSet> deletedNodes) {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig, initWithId_withJavaUtilMap_withJavaUtilSet_, initiator, newlyAddedNodes, deletedNodes)
}

void EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig *self, OrgJsonJSONObject *json, id<EduUmassCsNioInterfacesStringifiable> unstringer) {
  EduUmassCsReconfigurationReconfigurationpacketsServerReconfigurationPacket_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(self, json, unstringer);
}

EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig *new_EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(OrgJsonJSONObject *json, id<EduUmassCsNioInterfacesStringifiable> unstringer) {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig, initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_, json, unstringer)
}

EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig *create_EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(OrgJsonJSONObject *json, id<EduUmassCsNioInterfacesStringifiable> unstringer) {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig, initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_, json, unstringer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsReconfigurationReconfigurationpacketsReconfigureActiveNodeConfig)