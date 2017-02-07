//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/reconfiguration/reconfigurationutils/ConsistentReconfigurableNodeConfig.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "edu/umass/cs/nio/nioutils/RTTEstimator.h"
#include "edu/umass/cs/reconfiguration/ReconfigurationConfig.h"
#include "edu/umass/cs/reconfiguration/interfaces/ReconfigurableNodeConfig.h"
#include "edu/umass/cs/reconfiguration/reconfigurationutils/ConsistentHashing.h"
#include "edu/umass/cs/reconfiguration/reconfigurationutils/ConsistentNodeConfig.h"
#include "edu/umass/cs/reconfiguration/reconfigurationutils/ConsistentReconfigurableNodeConfig.h"
#include "edu/umass/cs/reconfiguration/reconfigurationutils/SimpleReconfiguratorNodeConfig.h"
#include "edu/umass/cs/utils/Config.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/net/InetAddress.h"
#include "java/net/InetSocketAddress.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/logging/Logger.h"
#include "org/json/JSONArray.h"

@interface EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig () {
 @public
  EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *nodeConfig_ConsistentReconfigurableNodeConfig_;
  id<JavaUtilSet> activeReplicas_;
  id<JavaUtilSet> reconfigurators_;
  EduUmassCsReconfigurationReconfigurationutilsConsistentHashing *CH_RC_;
  EduUmassCsReconfigurationReconfigurationutilsConsistentHashing *CH_AR_;
  id<JavaUtilSet> reconfiguratorsSlatedForRemoval_;
  id<JavaUtilSet> activesSlatedForRemoval_;
}

- (id<JavaUtilSet>)getReplicatedActivesAddressesWithNSString:(NSString *)name
                                                     withInt:(jint)limit;

- (jboolean)refreshActives;

- (jboolean)refreshReconfigurators;

- (id<JavaUtilSet>)getLastActives;

- (id<JavaUtilSet>)getLastReconfigurators;

- (id<JavaUtilSet>)setLastActivesWithJavaUtilSet:(id<JavaUtilSet>)curActives;

- (id<JavaUtilSet>)setLastReconfiguratorsWithJavaUtilSet:(id<JavaUtilSet>)curReconfigurators;

- (jboolean)isSlatedForRemovalWithId:(id)id_;

- (JavaNetInetSocketAddress *)removeActiveWithId:(id)id_;

@end

J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig, nodeConfig_ConsistentReconfigurableNodeConfig_, EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *)
J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig, activeReplicas_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig, reconfigurators_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig, CH_RC_, EduUmassCsReconfigurationReconfigurationutilsConsistentHashing *)
J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig, CH_AR_, EduUmassCsReconfigurationReconfigurationutilsConsistentHashing *)
J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig, reconfiguratorsSlatedForRemoval_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig, activesSlatedForRemoval_, id<JavaUtilSet>)

__attribute__((unused)) static id<JavaUtilSet> EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_getReplicatedActivesAddressesWithNSString_withInt_(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self, NSString *name, jint limit);

__attribute__((unused)) static jboolean EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_refreshActives(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self);

__attribute__((unused)) static jboolean EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_refreshReconfigurators(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self);

__attribute__((unused)) static id<JavaUtilSet> EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_getLastActives(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self);

__attribute__((unused)) static id<JavaUtilSet> EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_getLastReconfigurators(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self);

__attribute__((unused)) static id<JavaUtilSet> EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_setLastActivesWithJavaUtilSet_(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self, id<JavaUtilSet> curActives);

__attribute__((unused)) static id<JavaUtilSet> EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_setLastReconfiguratorsWithJavaUtilSet_(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self, id<JavaUtilSet> curReconfigurators);

__attribute__((unused)) static jboolean EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_isSlatedForRemovalWithId_(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self, id id_);

__attribute__((unused)) static JavaNetInetSocketAddress *EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_removeActiveWithId_(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self, id id_);

__attribute__((unused)) static IOSObjectArray *EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig__Annotations$0();

@implementation EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig

- (instancetype)initWithEduUmassCsReconfigurationInterfacesReconfigurableNodeConfig:(id<EduUmassCsReconfigurationInterfacesReconfigurableNodeConfig>)nc {
  EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_initWithEduUmassCsReconfigurationInterfacesReconfigurableNodeConfig_(self, nc);
  return self;
}

- (id<JavaUtilSet>)getValuesFromStringSetWithJavaUtilSet:(id<JavaUtilSet>)strNodes {
  return [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getValuesFromStringSetWithJavaUtilSet:strNodes];
}

- (id<JavaUtilSet>)getValuesFromJSONArrayWithOrgJsonJSONArray:(OrgJsonJSONArray *)array {
  return [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getValuesFromJSONArrayWithOrgJsonJSONArray:array];
}

- (id<JavaUtilSet>)getNodeIDs {
  @throw create_JavaLangRuntimeException_initWithNSString_(@"The use of this method is not permitted");
}

- (id<JavaUtilSet>)getActiveReplicas {
  return [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getActiveReplicas];
}

- (id<JavaUtilSet>)getActiveReplicaSocketAddresses {
  return [self getActiveReplicaSocketAddressesWithInt:JavaLangInteger_MAX_VALUE];
}

- (id<JavaUtilSet>)getActiveReplicaSocketAddressesWithInt:(jint)limit {
  id<JavaUtilSet> actives = create_JavaUtilHashSet_init();
  id<JavaUtilSet> activeIPs = create_JavaUtilHashSet_init();
  JavaUtilArrayList *activeNodes = create_JavaUtilArrayList_init();
  JavaUtilArrayList *duplicateIPs = create_JavaUtilArrayList_init();
  for (id __strong node in nil_chk([self getActiveReplicas])) {
    JavaNetInetSocketAddress *sockAddr = [self getNodeSocketAddressWithId:node];
    if (![activeIPs containsWithId:JavaLangInteger_valueOfWithInt_(EduUmassCsNioNioutilsRTTEstimator_addrToPrefixIntWithJavaNetInetAddress_([((JavaNetInetSocketAddress *) nil_chk(sockAddr)) getAddress]))]) {
      [activeNodes addWithId:sockAddr];
      [activeIPs addWithId:JavaLangInteger_valueOfWithInt_(EduUmassCsNioNioutilsRTTEstimator_addrToPrefixIntWithJavaNetInetAddress_([sockAddr getAddress]))];
    }
    else [duplicateIPs addWithId:sockAddr];
    if ([activeNodes size] >= limit) break;
  }
  if ([activeNodes size] < limit) {
    for (JavaNetInetSocketAddress * __strong duplicate in duplicateIPs) {
      [activeNodes addWithId:duplicate];
      if ([activeNodes size] >= limit) break;
    }
  }
  JavaUtilCollections_shuffleWithJavaUtilList_(activeNodes);
  for (JavaNetInetSocketAddress * __strong sockAddr in activeNodes) {
    [actives addWithId:sockAddr];
    if ([actives size] >= limit) break;
  }
  return actives;
}

- (id<JavaUtilSet>)getReconfigurators {
  return [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getReconfigurators];
}

- (JavaUtilArrayList *)getNodeIPsWithJavaUtilSet:(id<JavaUtilSet>)nodeIDs {
  JavaUtilArrayList *addresses = create_JavaUtilArrayList_init();
  for (id __strong id_ in nil_chk(nodeIDs)) {
    [addresses addWithId:[((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getNodeAddressWithId:id_]];
  }
  JreAssert(((addresses != nil)), (@"edu/umass/cs/reconfiguration/reconfigurationutils/ConsistentReconfigurableNodeConfig.java:131 condition failed: assert (addresses != null);"));
  return addresses;
}

- (JavaUtilArrayList *)getActiveIPs {
  return [self getNodeIPsWithJavaUtilSet:[self getActiveReplicas]];
}

- (id<JavaUtilSet>)getReplicatedReconfiguratorsWithNSString:(NSString *)name {
  EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_refreshReconfigurators(self);
  return [((EduUmassCsReconfigurationReconfigurationutilsConsistentHashing *) nil_chk(self->CH_RC_)) getReplicatedServersWithNSString:name];
}

- (id<JavaUtilSet>)getReconfiguratorsAsAddressesWithNSString:(NSString *)name {
  id<JavaUtilSet> nodes = [self getReplicatedReconfiguratorsWithNSString:name];
  id<JavaUtilSet> addrs = create_JavaUtilHashSet_init();
  for (id __strong node in nil_chk(nodes)) [addrs addWithId:[self getNodeSocketAddressWithId:node]];
  return addrs;
}

- (id)getFirstReconfiguratorWithNSString:(NSString *)name {
  EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_refreshReconfigurators(self);
  return [((EduUmassCsReconfigurationReconfigurationutilsConsistentHashing *) nil_chk(self->CH_RC_)) getNodeWithNSString:name];
}

- (id)getReconfiguratorHashWithNSString:(NSString *)name {
  return [self getFirstReconfiguratorWithNSString:name];
}

- (id<JavaUtilSet>)getReplicatedActivesWithNSString:(NSString *)name {
  EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_refreshActives(self);
  return [((EduUmassCsReconfigurationReconfigurationutilsConsistentHashing *) nil_chk(self->CH_AR_)) getReplicatedServersWithNSString:name];
}

- (JavaUtilArrayList *)getReplicatedActivesIPsWithNSString:(NSString *)name {
  return [self getNodeIPsWithJavaUtilSet:[self getReplicatedActivesWithNSString:name]];
}

- (id<JavaUtilSet>)getReplicatedActivesAddressesWithNSString:(NSString *)name
                                                     withInt:(jint)limit {
  return EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_getReplicatedActivesAddressesWithNSString_withInt_(self, name, limit);
}

- (id<JavaUtilSet>)getRandomActiveReplica {
  return EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_getReplicatedActivesAddressesWithNSString_withInt_(self, JreStrcat("D", JavaLangMath_random()), 1);
}

- (id<JavaUtilSet>)getIPToActiveReplicaIDsWithJavaUtilArrayList:(JavaUtilArrayList *)newAddresses
                                                withJavaUtilSet:(id<JavaUtilSet>)oldNodes {
  id<JavaUtilSet> newNodes = create_JavaUtilHashSet_init();
  JavaUtilArrayList *unassigned = create_JavaUtilArrayList_init();
  for (JavaNetInetAddress * __strong address in nil_chk(newAddresses)) [unassigned addWithId:address];
  for (id __strong oldNode in nil_chk(oldNodes)) {
    JavaNetInetAddress *oldAddress = [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getNodeAddressWithId:oldNode];
    if ([unassigned containsWithId:oldAddress]) {
      [newNodes addWithId:oldNode];
      [unassigned removeWithId:oldAddress];
    }
  }
  for (id __strong node in nil_chk([((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getActiveReplicas])) {
    if ([((id<JavaUtilSet>) nil_chk(self->activesSlatedForRemoval_)) containsWithId:node]) continue;
    JavaNetInetAddress *address = [self->nodeConfig_ConsistentReconfigurableNodeConfig_ getNodeAddressWithId:node];
    if ([unassigned containsWithId:address]) {
      [newNodes addWithId:node];
      [unassigned removeWithId:address];
    }
  }
  return newNodes;
}

- (id<EduUmassCsReconfigurationInterfacesReconfigurableNodeConfig>)getUnderlyingNodeConfig {
  return self->nodeConfig_ConsistentReconfigurableNodeConfig_;
}

- (jboolean)refreshActives {
  return EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_refreshActives(self);
}

- (jboolean)refreshReconfigurators {
  return EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_refreshReconfigurators(self);
}

- (id<JavaUtilSet>)getLastActives {
  return EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_getLastActives(self);
}

- (id<JavaUtilSet>)getLastReconfigurators {
  return EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_getLastReconfigurators(self);
}

- (id<JavaUtilSet>)setLastActivesWithJavaUtilSet:(id<JavaUtilSet>)curActives {
  return EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_setLastActivesWithJavaUtilSet_(self, curActives);
}

- (id<JavaUtilSet>)setLastReconfiguratorsWithJavaUtilSet:(id<JavaUtilSet>)curReconfigurators {
  return EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_setLastReconfiguratorsWithJavaUtilSet_(self, curReconfigurators);
}

- (JavaNetInetSocketAddress *)addReconfiguratorWithId:(id)id_
                         withJavaNetInetSocketAddress:(JavaNetInetSocketAddress *)sockAddr {
  JavaNetInetSocketAddress *isa_ = [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) addReconfiguratorWithId:id_ withJavaNetInetSocketAddress:sockAddr];
  JreAssert((([self->nodeConfig_ConsistentReconfigurableNodeConfig_ getNodeAddressWithId:id_] != nil)), (@"edu/umass/cs/reconfiguration/reconfigurationutils/ConsistentReconfigurableNodeConfig.java:282 condition failed: assert (this.nodeConfig.getNodeAddress(id) != null);"));
  return isa_;
}

- (JavaNetInetSocketAddress *)getNodeSocketAddressWithId:(id)id_ {
  JavaNetInetAddress *ip = [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getNodeAddressWithId:id_];
  jint port = [self->nodeConfig_ConsistentReconfigurableNodeConfig_ getNodePortWithId:id_];
  if (port == -1 && !EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_isSlatedForRemovalWithId_(self, id_)) [((JavaUtilLoggingLogger *) nil_chk(EduUmassCsReconfigurationReconfigurationConfig_getLogger())) warningWithNSString:JreStrcat("$@", @"No port found for nodeID ", id_)];
  return (ip != nil ? create_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(ip, port) : nil);
}

- (JavaNetInetSocketAddress *)getBindSocketAddressWithId:(id)id_ {
  JavaNetInetAddress *ip = [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getBindAddressWithId:id_];
  jint port = [self->nodeConfig_ConsistentReconfigurableNodeConfig_ getNodePortWithId:id_];
  if (port == -1 && !EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_isSlatedForRemovalWithId_(self, id_)) [((JavaUtilLoggingLogger *) nil_chk(EduUmassCsReconfigurationReconfigurationConfig_getLogger())) warningWithNSString:JreStrcat("$@", @"No port found for nodeID ", id_)];
  return (ip != nil ? create_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(ip, port) : nil);
}

- (jboolean)isSlatedForRemovalWithId:(id)id_ {
  return EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_isSlatedForRemovalWithId_(self, id_);
}

- (JavaNetInetSocketAddress *)removeReconfiguratorWithId:(id)id_ {
  return [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) removeReconfiguratorWithId:id_];
}

- (JavaNetInetSocketAddress *)removeActiveWithId:(id)id_ {
  return EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_removeActiveWithId_(self, id_);
}

+ (id<JavaUtilCollection>)splitIntoRCGroupsWithJavaUtilSet:(id<JavaUtilSet>)names
                                           withJavaUtilSet:(id<JavaUtilSet>)reconfigurators {
  return EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_splitIntoRCGroupsWithJavaUtilSet_withJavaUtilSet_(names, reconfigurators);
}

- (jboolean)checkSameGroupWithJavaUtilSet:(id<JavaUtilSet>)names {
  id rc = nil;
  for (NSString * __strong name in nil_chk(names)) if (rc == nil) rc = [self getFirstReconfiguratorWithNSString:name];
  else if (![rc isEqual:[self getFirstReconfiguratorWithNSString:name]]) return false;
  return true;
}

- (JavaNetInetSocketAddress *)slateForRemovalReconfiguratorWithId:(id)id_ {
  [((id<JavaUtilSet>) nil_chk(self->reconfiguratorsSlatedForRemoval_)) addWithId:id_];
  return [self getNodeSocketAddressWithId:id_];
}

- (JavaNetInetSocketAddress *)slateForRemovalActiveWithId:(id)id_ {
  [((id<JavaUtilSet>) nil_chk(self->activesSlatedForRemoval_)) addWithId:id_];
  return [self getNodeSocketAddressWithId:id_];
}

- (jboolean)removeReconfiguratorsSlatedForRemoval {
  jboolean allRemoved = true;
  for (id<JavaUtilIterator> nodeIter = [((id<JavaUtilSet>) nil_chk(self->reconfiguratorsSlatedForRemoval_)) iterator]; [((id<JavaUtilIterator>) nil_chk(nodeIter)) hasNext]; ) {
    id slated = [nodeIter next];
    if ([self removeReconfiguratorWithId:slated] != nil) [nodeIter remove];
    else allRemoved = false;
  }
  return allRemoved;
}

- (jboolean)removeActivesSlatedForRemoval {
  jboolean allRemoved = true;
  for (id<JavaUtilIterator> nodeIter = [((id<JavaUtilSet>) nil_chk(self->activesSlatedForRemoval_)) iterator]; [((id<JavaUtilIterator>) nil_chk(nodeIter)) hasNext]; ) {
    id slated = [nodeIter next];
    if (EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_removeActiveWithId_(self, slated) != nil) {
      JreAssert(((![self nodeExistsWithId:slated])), (slated));
      [nodeIter remove];
    }
    else allRemoved = false;
  }
  return allRemoved;
}

- (JavaNetInetSocketAddress *)addActiveReplicaWithId:(id)id_
                        withJavaNetInetSocketAddress:(JavaNetInetSocketAddress *)sockAddr {
  return [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) addActiveReplicaWithId:id_ withJavaNetInetSocketAddress:sockAddr];
}

- (JavaNetInetSocketAddress *)removeActiveReplicaWithId:(id)id_ {
  return [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) removeActiveReplicaWithId:id_];
}

- (jlong)getVersion {
  return [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getVersion];
}

- (NSString *)description {
  NSString *s = @"";
  for (id __strong id_ in nil_chk([((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getActiveReplicas])) {
    JreStrAppend(&s, "@C@C", id_, ':', [self getNodeSocketAddressWithId:id_], ' ');
  }
  JreStrAppend(&s, "$", @"\n");
  for (id __strong id_ in nil_chk([self->nodeConfig_ConsistentReconfigurableNodeConfig_ getReconfigurators])) {
    JreStrAppend(&s, "@C@C", id_, ':', [self getNodeSocketAddressWithId:id_], ' ');
  }
  return s;
}

- (void)dealloc {
  RELEASE_(nodeConfig_ConsistentReconfigurableNodeConfig_);
  RELEASE_(activeReplicas_);
  RELEASE_(reconfigurators_);
  RELEASE_(CH_RC_);
  RELEASE_(CH_AR_);
  RELEASE_(reconfiguratorsSlatedForRemoval_);
  RELEASE_(activesSlatedForRemoval_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, 5, 6, 7, 8, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 9, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 9, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 10, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, 11, 12, -1, 13, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 9, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, 14, 3, -1, 15, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 16, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, 17, 18, -1, 19, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, 20, 18, -1, 21, -1, -1 },
    { NULL, "LNSObject;", 0x1, 22, 18, -1, 23, -1, -1 },
    { NULL, "LNSObject;", 0x1, 24, 18, -1, 23, 25, -1 },
    { NULL, "LJavaUtilSet;", 0x1, 26, 18, -1, 19, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, 27, 18, -1, 28, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x2, 29, 30, -1, 31, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 10, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, 32, 33, -1, 34, -1, -1 },
    { NULL, "LEduUmassCsReconfigurationInterfacesReconfigurableNodeConfig;", 0x1, -1, -1, -1, 35, -1, -1 },
    { NULL, "Z", 0x22, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x22, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x22, -1, -1, -1, 9, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x22, -1, -1, -1, 9, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x22, 36, 3, -1, 37, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x22, 38, 3, -1, 37, -1, -1 },
    { NULL, "LJavaNetInetSocketAddress;", 0x1, 39, 40, -1, 41, -1, -1 },
    { NULL, "LJavaNetInetSocketAddress;", 0x1, 42, 43, -1, 44, -1, -1 },
    { NULL, "LJavaNetInetSocketAddress;", 0x1, 45, 43, -1, 44, -1, -1 },
    { NULL, "Z", 0x2, 46, 43, -1, 47, -1, -1 },
    { NULL, "LJavaNetInetSocketAddress;", 0x1, 48, 43, -1, 44, -1, -1 },
    { NULL, "LJavaNetInetSocketAddress;", 0x2, 49, 43, -1, 44, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x9, 50, 51, -1, 52, -1, -1 },
    { NULL, "Z", 0x1, 53, 3, -1, 54, -1, -1 },
    { NULL, "LJavaNetInetSocketAddress;", 0x1, 55, 43, -1, 44, -1, -1 },
    { NULL, "LJavaNetInetSocketAddress;", 0x1, 56, 43, -1, 44, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaNetInetSocketAddress;", 0x1, 57, 40, -1, 41, -1, -1 },
    { NULL, "LJavaNetInetSocketAddress;", 0x1, 58, 43, -1, 44, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 59, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithEduUmassCsReconfigurationInterfacesReconfigurableNodeConfig:);
  methods[1].selector = @selector(getValuesFromStringSetWithJavaUtilSet:);
  methods[2].selector = @selector(getValuesFromJSONArrayWithOrgJsonJSONArray:);
  methods[3].selector = @selector(getNodeIDs);
  methods[4].selector = @selector(getActiveReplicas);
  methods[5].selector = @selector(getActiveReplicaSocketAddresses);
  methods[6].selector = @selector(getActiveReplicaSocketAddressesWithInt:);
  methods[7].selector = @selector(getReconfigurators);
  methods[8].selector = @selector(getNodeIPsWithJavaUtilSet:);
  methods[9].selector = @selector(getActiveIPs);
  methods[10].selector = @selector(getReplicatedReconfiguratorsWithNSString:);
  methods[11].selector = @selector(getReconfiguratorsAsAddressesWithNSString:);
  methods[12].selector = @selector(getFirstReconfiguratorWithNSString:);
  methods[13].selector = @selector(getReconfiguratorHashWithNSString:);
  methods[14].selector = @selector(getReplicatedActivesWithNSString:);
  methods[15].selector = @selector(getReplicatedActivesIPsWithNSString:);
  methods[16].selector = @selector(getReplicatedActivesAddressesWithNSString:withInt:);
  methods[17].selector = @selector(getRandomActiveReplica);
  methods[18].selector = @selector(getIPToActiveReplicaIDsWithJavaUtilArrayList:withJavaUtilSet:);
  methods[19].selector = @selector(getUnderlyingNodeConfig);
  methods[20].selector = @selector(refreshActives);
  methods[21].selector = @selector(refreshReconfigurators);
  methods[22].selector = @selector(getLastActives);
  methods[23].selector = @selector(getLastReconfigurators);
  methods[24].selector = @selector(setLastActivesWithJavaUtilSet:);
  methods[25].selector = @selector(setLastReconfiguratorsWithJavaUtilSet:);
  methods[26].selector = @selector(addReconfiguratorWithId:withJavaNetInetSocketAddress:);
  methods[27].selector = @selector(getNodeSocketAddressWithId:);
  methods[28].selector = @selector(getBindSocketAddressWithId:);
  methods[29].selector = @selector(isSlatedForRemovalWithId:);
  methods[30].selector = @selector(removeReconfiguratorWithId:);
  methods[31].selector = @selector(removeActiveWithId:);
  methods[32].selector = @selector(splitIntoRCGroupsWithJavaUtilSet:withJavaUtilSet:);
  methods[33].selector = @selector(checkSameGroupWithJavaUtilSet:);
  methods[34].selector = @selector(slateForRemovalReconfiguratorWithId:);
  methods[35].selector = @selector(slateForRemovalActiveWithId:);
  methods[36].selector = @selector(removeReconfiguratorsSlatedForRemoval);
  methods[37].selector = @selector(removeActivesSlatedForRemoval);
  methods[38].selector = @selector(addActiveReplicaWithId:withJavaNetInetSocketAddress:);
  methods[39].selector = @selector(removeActiveReplicaWithId:);
  methods[40].selector = @selector(getVersion);
  methods[41].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "nodeConfig_ConsistentReconfigurableNodeConfig_", "LEduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig;", .constantValue.asLong = 0, 0x12, 60, -1, 61, -1 },
    { "activeReplicas_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x2, -1, -1, 62, -1 },
    { "reconfigurators_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x2, -1, -1, 62, -1 },
    { "CH_RC_", "LEduUmassCsReconfigurationReconfigurationutilsConsistentHashing;", .constantValue.asLong = 0, 0x12, -1, -1, 63, -1 },
    { "CH_AR_", "LEduUmassCsReconfigurationReconfigurationutilsConsistentHashing;", .constantValue.asLong = 0, 0x12, -1, -1, 63, -1 },
    { "reconfiguratorsSlatedForRemoval_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x2, -1, -1, 62, -1 },
    { "activesSlatedForRemoval_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x2, -1, -1, 62, -1 },
  };
  static const void *ptrTable[] = { "LEduUmassCsReconfigurationInterfacesReconfigurableNodeConfig;", "(Ledu/umass/cs/reconfiguration/interfaces/ReconfigurableNodeConfig<TNodeIDType;>;)V", "getValuesFromStringSet", "LJavaUtilSet;", "(Ljava/util/Set<Ljava/lang/String;>;)Ljava/util/Set<TNodeIDType;>;", "getValuesFromJSONArray", "LOrgJsonJSONArray;", "LOrgJsonJSONException;", "(Lorg/json/JSONArray;)Ljava/util/Set<TNodeIDType;>;", "()Ljava/util/Set<TNodeIDType;>;", "()Ljava/util/Set<Ljava/net/InetSocketAddress;>;", "getActiveReplicaSocketAddresses", "I", "(I)Ljava/util/Set<Ljava/net/InetSocketAddress;>;", "getNodeIPs", "(Ljava/util/Set<TNodeIDType;>;)Ljava/util/ArrayList<Ljava/net/InetAddress;>;", "()Ljava/util/ArrayList<Ljava/net/InetAddress;>;", "getReplicatedReconfigurators", "LNSString;", "(Ljava/lang/String;)Ljava/util/Set<TNodeIDType;>;", "getReconfiguratorsAsAddresses", "(Ljava/lang/String;)Ljava/util/Set<Ljava/net/InetSocketAddress;>;", "getFirstReconfigurator", "(Ljava/lang/String;)TNodeIDType;", "getReconfiguratorHash", (void *)&EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig__Annotations$0, "getReplicatedActives", "getReplicatedActivesIPs", "(Ljava/lang/String;)Ljava/util/ArrayList<Ljava/net/InetAddress;>;", "getReplicatedActivesAddresses", "LNSString;I", "(Ljava/lang/String;I)Ljava/util/Set<Ljava/net/InetSocketAddress;>;", "getIPToActiveReplicaIDs", "LJavaUtilArrayList;LJavaUtilSet;", "(Ljava/util/ArrayList<Ljava/net/InetAddress;>;Ljava/util/Set<TNodeIDType;>;)Ljava/util/Set<TNodeIDType;>;", "()Ledu/umass/cs/reconfiguration/interfaces/ReconfigurableNodeConfig<TNodeIDType;>;", "setLastActives", "(Ljava/util/Set<TNodeIDType;>;)Ljava/util/Set<TNodeIDType;>;", "setLastReconfigurators", "addReconfigurator", "LNSObject;LJavaNetInetSocketAddress;", "(TNodeIDType;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;", "getNodeSocketAddress", "LNSObject;", "(TNodeIDType;)Ljava/net/InetSocketAddress;", "getBindSocketAddress", "isSlatedForRemoval", "(TNodeIDType;)Z", "removeReconfigurator", "removeActive", "splitIntoRCGroups", "LJavaUtilSet;LJavaUtilSet;", "(Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<*>;)Ljava/util/Collection<Ljava/util/Set<Ljava/lang/String;>;>;", "checkSameGroup", "(Ljava/util/Set<Ljava/lang/String;>;)Z", "slateForRemovalReconfigurator", "slateForRemovalActive", "addActiveReplica", "removeActiveReplica", "toString", "nodeConfig", "Ledu/umass/cs/reconfiguration/reconfigurationutils/SimpleReconfiguratorNodeConfig<TNodeIDType;>;", "Ljava/util/Set<TNodeIDType;>;", "Ledu/umass/cs/reconfiguration/reconfigurationutils/ConsistentHashing<TNodeIDType;>;", "<NodeIDType:Ljava/lang/Object;>Ledu/umass/cs/reconfiguration/reconfigurationutils/ConsistentNodeConfig<TNodeIDType;>;Ledu/umass/cs/reconfiguration/interfaces/ModifiableActiveConfig<TNodeIDType;>;Ledu/umass/cs/reconfiguration/interfaces/ModifiableRCConfig<TNodeIDType;>;Ledu/umass/cs/reconfiguration/reconfigurationutils/InterfaceGetActiveIPs;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig = { "ConsistentReconfigurableNodeConfig", "edu.umass.cs.reconfiguration.reconfigurationutils", ptrTable, methods, fields, 7, 0x1, 42, 7, -1, -1, -1, 64, -1 };
  return &_EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig;
}

@end

void EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_initWithEduUmassCsReconfigurationInterfacesReconfigurableNodeConfig_(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self, id<EduUmassCsReconfigurationInterfacesReconfigurableNodeConfig> nc) {
  EduUmassCsReconfigurationReconfigurationutilsConsistentNodeConfig_initWithEduUmassCsNioInterfacesNodeConfig_(self, nc);
  JreStrongAssignAndConsume(&self->reconfiguratorsSlatedForRemoval_, new_JavaUtilHashSet_init());
  JreStrongAssignAndConsume(&self->activesSlatedForRemoval_, new_JavaUtilHashSet_init());
  JreStrongAssignAndConsume(&self->nodeConfig_ConsistentReconfigurableNodeConfig_, new_EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig_initWithEduUmassCsReconfigurationInterfacesReconfigurableNodeConfig_(nc));
  JreStrongAssign(&self->activeReplicas_, [self->nodeConfig_ConsistentReconfigurableNodeConfig_ getActiveReplicas]);
  JreStrongAssign(&self->reconfigurators_, [self->nodeConfig_ConsistentReconfigurableNodeConfig_ getReconfigurators]);
  JreStrongAssignAndConsume(&self->CH_RC_, new_EduUmassCsReconfigurationReconfigurationutilsConsistentHashing_initWithJavaUtilSet_(self->reconfigurators_));
  JreStrongAssignAndConsume(&self->CH_AR_, new_EduUmassCsReconfigurationReconfigurationutilsConsistentHashing_initWithJavaUtilSet_withBoolean_(self->activeReplicas_, EduUmassCsUtilsConfig_getGlobalBooleanWithJavaLangEnum_(JreLoadEnum(EduUmassCsReconfigurationReconfigurationConfig_RC, REPLICATE_ALL))));
}

EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *new_EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_initWithEduUmassCsReconfigurationInterfacesReconfigurableNodeConfig_(id<EduUmassCsReconfigurationInterfacesReconfigurableNodeConfig> nc) {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig, initWithEduUmassCsReconfigurationInterfacesReconfigurableNodeConfig_, nc)
}

EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *create_EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_initWithEduUmassCsReconfigurationInterfacesReconfigurableNodeConfig_(id<EduUmassCsReconfigurationInterfacesReconfigurableNodeConfig> nc) {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig, initWithEduUmassCsReconfigurationInterfacesReconfigurableNodeConfig_, nc)
}

id<JavaUtilSet> EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_getReplicatedActivesAddressesWithNSString_withInt_(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self, NSString *name, jint limit) {
  id<JavaUtilSet> actives = [self getReplicatedActivesWithNSString:name];
  id<JavaUtilSet> addresses = create_JavaUtilHashSet_init();
  jint count = 0;
  for (id __strong node in nil_chk(actives)) {
    [addresses addWithId:[self getNodeSocketAddressWithId:node]];
    if (++count == limit) break;
  }
  return addresses;
}

jboolean EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_refreshActives(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self) {
  @synchronized(self) {
    id<JavaUtilSet> curActives = [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getActiveReplicas];
    [((id<JavaUtilSet>) nil_chk(curActives)) removeAllWithJavaUtilCollection:self->activesSlatedForRemoval_];
    if ([curActives isEqual:EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_getLastActives(self)]) return false;
    EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_setLastActivesWithJavaUtilSet_(self, curActives);
    [((EduUmassCsReconfigurationReconfigurationutilsConsistentHashing *) nil_chk(self->CH_AR_)) refreshWithJavaUtilSet:curActives];
    return true;
  }
}

jboolean EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_refreshReconfigurators(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self) {
  @synchronized(self) {
    id<JavaUtilSet> curReconfigurators = [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) getReconfigurators];
    [((id<JavaUtilSet>) nil_chk(curReconfigurators)) removeAllWithJavaUtilCollection:self->reconfiguratorsSlatedForRemoval_];
    if ([curReconfigurators isEqual:EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_getLastReconfigurators(self)]) return false;
    EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_setLastReconfiguratorsWithJavaUtilSet_(self, curReconfigurators);
    [((EduUmassCsReconfigurationReconfigurationutilsConsistentHashing *) nil_chk(self->CH_RC_)) refreshWithJavaUtilSet:curReconfigurators];
    return true;
  }
}

id<JavaUtilSet> EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_getLastActives(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self) {
  @synchronized(self) {
    return self->activeReplicas_;
  }
}

id<JavaUtilSet> EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_getLastReconfigurators(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self) {
  @synchronized(self) {
    return self->reconfigurators_;
  }
}

id<JavaUtilSet> EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_setLastActivesWithJavaUtilSet_(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self, id<JavaUtilSet> curActives) {
  @synchronized(self) {
    return JreStrongAssign(&self->activeReplicas_, curActives);
  }
}

id<JavaUtilSet> EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_setLastReconfiguratorsWithJavaUtilSet_(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self, id<JavaUtilSet> curReconfigurators) {
  @synchronized(self) {
    return JreStrongAssign(&self->reconfigurators_, curReconfigurators);
  }
}

jboolean EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_isSlatedForRemovalWithId_(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self, id id_) {
  return [((id<JavaUtilSet>) nil_chk(self->activesSlatedForRemoval_)) containsWithId:id_] || [((id<JavaUtilSet>) nil_chk(self->reconfiguratorsSlatedForRemoval_)) containsWithId:id_];
}

JavaNetInetSocketAddress *EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_removeActiveWithId_(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig *self, id id_) {
  return [((EduUmassCsReconfigurationReconfigurationutilsSimpleReconfiguratorNodeConfig *) nil_chk(self->nodeConfig_ConsistentReconfigurableNodeConfig_)) removeActiveReplicaWithId:id_];
}

id<JavaUtilCollection> EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_splitIntoRCGroupsWithJavaUtilSet_withJavaUtilSet_(id<JavaUtilSet> names, id<JavaUtilSet> reconfigurators) {
  EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig_initialize();
  if ([((id<JavaUtilSet>) nil_chk(reconfigurators)) isEmpty]) @throw create_JavaLangRuntimeException_initWithNSString_(@"A nonempty set of reconfigurators must be specified.");
  EduUmassCsReconfigurationReconfigurationutilsConsistentHashing *ch = create_EduUmassCsReconfigurationReconfigurationutilsConsistentHashing_initWithJavaUtilSet_(reconfigurators);
  id<JavaUtilMap> batches = create_JavaUtilHashMap_init();
  for (NSString * __strong name in nil_chk(names)) {
    NSString *rc = [nil_chk([ch getNodeWithNSString:name]) description];
    if (![batches containsKeyWithId:rc]) [batches putWithId:rc withId:create_JavaUtilHashSet_init()];
    [((id<JavaUtilSet>) nil_chk([batches getWithId:rc])) addWithId:name];
  }
  return [batches values];
}

IOSObjectArray *EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsReconfigurationReconfigurationutilsConsistentReconfigurableNodeConfig)