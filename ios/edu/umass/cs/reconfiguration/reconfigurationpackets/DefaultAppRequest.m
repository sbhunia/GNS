//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/reconfiguration/reconfigurationpackets/DefaultAppRequest.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "edu/umass/cs/gigapaxos/interfaces/Request.h"
#include "edu/umass/cs/nio/interfaces/IntegerPacketType.h"
#include "edu/umass/cs/reconfiguration/interfaces/ReconfigurableRequest.h"
#include "edu/umass/cs/reconfiguration/reconfigurationpackets/DefaultAppRequest.h"
#include "edu/umass/cs/reconfiguration/reconfigurationpackets/ReconfigurationPacket.h"
#include "edu/umass/cs/utils/Summarizable.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "org/json/JSONException.h"
#include "org/json/JSONObject.h"

@interface EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest () {
 @public
  jboolean stop_;
  NSString *serviceName_;
  jint epochNumber_;
  NSString *requestValue_;
  jboolean isCoord_;
  jlong requestID_;
}

@end

J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest, serviceName_, NSString *)
J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest, requestValue_, NSString *)

__attribute__((unused)) static void EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_initWithNSString_withInt_(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *self, NSString *__name, jint __ordinal);

@implementation EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest

- (instancetype)initWithNSString:(NSString *)serviceName
                         withInt:(jint)epochNumber
                     withBoolean:(jboolean)stop {
  EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_initWithNSString_withInt_withBoolean_(self, serviceName, epochNumber, stop);
  return self;
}

- (instancetype)initWithOrgJsonJSONObject:(OrgJsonJSONObject *)json {
  EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_initWithOrgJsonJSONObject_(self, json);
  return self;
}

- (id<EduUmassCsNioInterfacesIntegerPacketType>)getRequestType {
  return JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType, NO_TYPE);
}

- (NSString *)getServiceName {
  return self->serviceName_;
}

- (NSString *)description {
  @try {
    return [((OrgJsonJSONObject *) nil_chk([self toJSONObject])) description];
  }
  @catch (OrgJsonJSONException *e) {
    [((OrgJsonJSONException *) nil_chk(e)) printStackTrace];
  }
  return nil;
}

- (OrgJsonJSONObject *)toJSONObject {
  OrgJsonJSONObject *json = create_OrgJsonJSONObject_init();
  [json putWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, STOP))) description] withBoolean:self->stop_];
  [json putWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, SERVICE_NAME))) description] withId:self->serviceName_];
  [json putWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, EPOCH_NUMBER))) description] withInt:self->epochNumber_];
  [json putWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, REQUEST_VALUE))) description] withId:self->requestValue_];
  [json putWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, REQUEST_ID))) description] withLong:self->requestID_];
  return json;
}

- (jint)getEpochNumber {
  return self->epochNumber_;
}

- (jboolean)isStop {
  return self->stop_;
}

- (jboolean)needsCoordination {
  return isCoord_;
}

- (void)setNeedsCoordinationWithBoolean:(jboolean)b {
  self->isCoord_ = b;
}

- (jlong)getRequestID {
  return self->requestID_;
}

- (id)getSummary {
  return EduUmassCsReconfigurationInterfacesReconfigurableRequest_getSummary(self);
}

- (IOSByteArray *)toBytes {
  return EduUmassCsGigapaxosInterfacesRequest_toBytes(self);
}

- (id)getSummaryWithBoolean:(jboolean)arg0 {
  return EduUmassCsUtilsSummarizable_getSummaryWithBoolean_(self, arg0);
}

- (void)dealloc {
  RELEASE_(serviceName_);
  RELEASE_(requestValue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, 2, -1, -1, -1 },
    { NULL, "LEduUmassCsNioInterfacesIntegerPacketType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsonJSONObject;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:withInt:withBoolean:);
  methods[1].selector = @selector(initWithOrgJsonJSONObject:);
  methods[2].selector = @selector(getRequestType);
  methods[3].selector = @selector(getServiceName);
  methods[4].selector = @selector(description);
  methods[5].selector = @selector(toJSONObject);
  methods[6].selector = @selector(getEpochNumber);
  methods[7].selector = @selector(isStop);
  methods[8].selector = @selector(needsCoordination);
  methods[9].selector = @selector(setNeedsCoordinationWithBoolean:);
  methods[10].selector = @selector(getRequestID);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "stop_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "serviceName_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "epochNumber_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "requestValue_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "isCoord_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "requestID_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;IZ", "LOrgJsonJSONObject;", "LOrgJsonJSONException;", "toString", "setNeedsCoordination", "Z", "LEduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest = { "DefaultAppRequest", "edu.umass.cs.reconfiguration.reconfigurationpackets", ptrTable, methods, fields, 7, 0x1, 11, 6, -1, 6, -1, -1, -1 };
  return &_EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest;
}

@end

void EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_initWithNSString_withInt_withBoolean_(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest *self, NSString *serviceName, jint epochNumber, jboolean stop) {
  NSObject_init(self);
  self->isCoord_ = true;
  self->stop_ = stop;
  JreStrongAssign(&self->serviceName_, serviceName);
  self->epochNumber_ = epochNumber;
  JreStrongAssign(&self->requestValue_, EduUmassCsGigapaxosInterfacesRequest_NO_OP);
  self->requestID_ = JreFpToLong((JavaLangMath_random() * JavaLangLong_MAX_VALUE));
}

EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest *new_EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_initWithNSString_withInt_withBoolean_(NSString *serviceName, jint epochNumber, jboolean stop) {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest, initWithNSString_withInt_withBoolean_, serviceName, epochNumber, stop)
}

EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest *create_EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_initWithNSString_withInt_withBoolean_(NSString *serviceName, jint epochNumber, jboolean stop) {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest, initWithNSString_withInt_withBoolean_, serviceName, epochNumber, stop)
}

void EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_initWithOrgJsonJSONObject_(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest *self, OrgJsonJSONObject *json) {
  NSObject_init(self);
  self->isCoord_ = true;
  self->stop_ = [((OrgJsonJSONObject *) nil_chk(json)) getBooleanWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, STOP))) description]];
  JreStrongAssign(&self->serviceName_, [json getStringWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, SERVICE_NAME))) description]]);
  self->epochNumber_ = [json getIntWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, EPOCH_NUMBER))) description]];
  JreStrongAssign(&self->requestValue_, [json getStringWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, REQUEST_VALUE))) description]]);
  self->requestID_ = [json getLongWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, REQUEST_ID))) description]];
}

EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest *new_EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_initWithOrgJsonJSONObject_(OrgJsonJSONObject *json) {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest, initWithOrgJsonJSONObject_, json)
}

EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest *create_EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_initWithOrgJsonJSONObject_(OrgJsonJSONObject *json) {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest, initWithOrgJsonJSONObject_, json)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest)

J2OBJC_INITIALIZED_DEFN(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys)

EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_values_[5];

@implementation EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys

+ (IOSObjectArray *)values {
  return EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_values();
}

+ (EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *)valueOfWithNSString:(NSString *)name {
  return EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LEduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "STOP", "LEduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "SERVICE_NAME", "LEduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "EPOCH_NUMBER", "LEduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "REQUEST_VALUE", "LEduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "REQUEST_ID", "LEduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, STOP), &JreEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, SERVICE_NAME), &JreEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, EPOCH_NUMBER), &JreEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, REQUEST_VALUE), &JreEnum(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys, REQUEST_ID), "LEduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest;", "Ljava/lang/Enum<Ledu/umass/cs/reconfiguration/reconfigurationpackets/DefaultAppRequest$Keys;>;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys = { "Keys", "edu.umass.cs.reconfiguration.reconfigurationpackets", ptrTable, methods, fields, 7, 0x401c, 2, 5, 7, -1, -1, 8, -1 };
  return &_EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys;
}

+ (void)initialize {
  if (self == [EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 5 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    id names[] = {
      @"STOP", @"SERVICE_NAME", @"EPOCH_NUMBER", @"REQUEST_VALUE", @"REQUEST_ID",
    };
    for (jint i = 0; i < 5; i++) {
      (EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_values_[i] = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
      EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_initWithNSString_withInt_(e, names[i], i);
    }
    J2OBJC_SET_INITIALIZED(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys)
  }
}

@end

void EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_initWithNSString_withInt_(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_values() {
  EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_initialize();
  return [IOSObjectArray arrayWithObjects:EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_values_ count:5 type:EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_class_()];
}

EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_valueOfWithNSString_(NSString *name) {
  EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_initialize();
  for (int i = 0; i < 5; i++) {
    EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *e = EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys *EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_fromOrdinal(NSUInteger ordinal) {
  EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_initialize();
  if (ordinal >= 5) {
    return nil;
  }
  return EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsReconfigurationReconfigurationpacketsDefaultAppRequest_Keys)