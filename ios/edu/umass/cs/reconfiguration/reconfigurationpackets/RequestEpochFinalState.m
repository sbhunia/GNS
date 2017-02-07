//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/reconfiguration/reconfigurationpackets/RequestEpochFinalState.java
//

#include "J2ObjC_source.h"
#include "edu/umass/cs/nio/interfaces/Stringifiable.h"
#include "edu/umass/cs/reconfiguration/reconfigurationpackets/BasicReconfigurationPacket.h"
#include "edu/umass/cs/reconfiguration/reconfigurationpackets/ReconfigurationPacket.h"
#include "edu/umass/cs/reconfiguration/reconfigurationpackets/RequestEpochFinalState.h"
#include "org/json/JSONObject.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState

- (instancetype)initWithId:(id)initiator
              withNSString:(NSString *)name
                   withInt:(jint)epochNumber {
  EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState_initWithId_withNSString_withInt_(self, initiator, name, epochNumber);
  return self;
}

- (instancetype)initWithOrgJsonJSONObject:(OrgJsonJSONObject *)json
 withEduUmassCsNioInterfacesStringifiable:(id<EduUmassCsNioInterfacesStringifiable>)unstringer {
  EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(self, json, unstringer);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 3, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithId:withNSString:withInt:);
  methods[1].selector = @selector(initWithOrgJsonJSONObject:withEduUmassCsNioInterfacesStringifiable:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSObject;LNSString;I", "(TNodeIDType;Ljava/lang/String;I)V", "LOrgJsonJSONObject;LEduUmassCsNioInterfacesStringifiable;", "LOrgJsonJSONException;", "(Lorg/json/JSONObject;Ledu/umass/cs/nio/interfaces/Stringifiable<TNodeIDType;>;)V", "<NodeIDType:Ljava/lang/Object;>Ledu/umass/cs/reconfiguration/reconfigurationpackets/BasicReconfigurationPacket<TNodeIDType;>;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState = { "RequestEpochFinalState", "edu.umass.cs.reconfiguration.reconfigurationpackets", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, 5, -1 };
  return &_EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState;
}

@end

void EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState_initWithId_withNSString_withInt_(EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState *self, id initiator, NSString *name, jint epochNumber) {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_initWithId_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_(self, initiator, JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType, REQUEST_EPOCH_FINAL_STATE), name, epochNumber);
}

EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState *new_EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState_initWithId_withNSString_withInt_(id initiator, NSString *name, jint epochNumber) {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState, initWithId_withNSString_withInt_, initiator, name, epochNumber)
}

EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState *create_EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState_initWithId_withNSString_withInt_(id initiator, NSString *name, jint epochNumber) {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState, initWithId_withNSString_withInt_, initiator, name, epochNumber)
}

void EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState *self, OrgJsonJSONObject *json, id<EduUmassCsNioInterfacesStringifiable> unstringer) {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(self, json, unstringer);
}

EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState *new_EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(OrgJsonJSONObject *json, id<EduUmassCsNioInterfacesStringifiable> unstringer) {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState, initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_, json, unstringer)
}

EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState *create_EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(OrgJsonJSONObject *json, id<EduUmassCsNioInterfacesStringifiable> unstringer) {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState, initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_, json, unstringer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsReconfigurationReconfigurationpacketsRequestEpochFinalState)