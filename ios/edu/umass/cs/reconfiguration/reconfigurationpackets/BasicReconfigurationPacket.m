//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/reconfiguration/reconfigurationpackets/BasicReconfigurationPacket.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "edu/umass/cs/nio/interfaces/IntegerPacketType.h"
#include "edu/umass/cs/nio/interfaces/Stringifiable.h"
#include "edu/umass/cs/nio/nioutils/StringifiableDefault.h"
#include "edu/umass/cs/reconfiguration/reconfigurationpackets/BasicReconfigurationPacket.h"
#include "edu/umass/cs/reconfiguration/reconfigurationpackets/ReconfigurationPacket.h"
#include "edu/umass/cs/utils/Summarizable.h"
#include "java/io/PrintStream.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "org/json/JSONException.h"
#include "org/json/JSONObject.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

__attribute__((unused)) static void EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_initWithNSString_withInt_(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys *self, NSString *__name, jint __ordinal);

@interface EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP : EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket

- (instancetype)initWithJavaLangInteger:(JavaLangInteger *)initiator
withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType:(EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType *)t
                           withNSString:(NSString *)name
                                withInt:(jint)epochNumber;

- (instancetype)initWithOrgJsonJSONObject:(OrgJsonJSONObject *)json;

- (JavaLangInteger *)flipWithId:(JavaLangInteger *)arg0;

- (EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType *)getType;

- (JavaLangInteger *)getSender;

- (JavaLangInteger *)getInitiator;

@end

J2OBJC_EMPTY_STATIC_INIT(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP)

__attribute__((unused)) static void EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithJavaLangInteger_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *self, JavaLangInteger *initiator, EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType *t, NSString *name, jint epochNumber);

__attribute__((unused)) static EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *new_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithJavaLangInteger_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_(JavaLangInteger *initiator, EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType *t, NSString *name, jint epochNumber) NS_RETURNS_RETAINED;

__attribute__((unused)) static EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *create_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithJavaLangInteger_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_(JavaLangInteger *initiator, EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType *t, NSString *name, jint epochNumber);

__attribute__((unused)) static void EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithOrgJsonJSONObject_(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *self, OrgJsonJSONObject *json);

__attribute__((unused)) static EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *new_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithOrgJsonJSONObject_(OrgJsonJSONObject *json) NS_RETURNS_RETAINED;

__attribute__((unused)) static EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *create_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithOrgJsonJSONObject_(OrgJsonJSONObject *json);

J2OBJC_TYPE_LITERAL_HEADER(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP)

@implementation EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket

- (instancetype)initWithId:(id)initiator
withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType:(EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType *)t
              withNSString:(NSString *)name
                   withInt:(jint)epochNumber {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_initWithId_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_(self, initiator, t, name, epochNumber);
  return self;
}

- (instancetype)initWithOrgJsonJSONObject:(OrgJsonJSONObject *)json
 withEduUmassCsNioInterfacesStringifiable:(id<EduUmassCsNioInterfacesStringifiable>)unstringer {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(self, json, unstringer);
  return self;
}

- (OrgJsonJSONObject *)toJSONObjectImpl {
  OrgJsonJSONObject *json = [super toJSONObjectImpl];
  [((OrgJsonJSONObject *) nil_chk(json)) putWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys, NAME))) description] withId:self->serviceName_];
  [json putWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys, EPOCH))) description] withInt:self->epochNumber_];
  return json;
}

- (NSString *)getServiceName {
  return self->serviceName_;
}

- (jint)getEpochNumber {
  return self->epochNumber_;
}

- (NSString *)getSummary {
  return JreStrcat("@C$CI", [self getType], ':', [self getServiceName], ':', [self getEpochNumber]);
}

- (id<EduUmassCsNioInterfacesIntegerPacketType>)getRequestType {
  return [self getType];
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_mainWithNSStringArray_(args);
}

- (id)getSummaryWithBoolean:(jboolean)arg0 {
  return EduUmassCsUtilsSummarizable_getSummaryWithBoolean_(self, arg0);
}

- (void)dealloc {
  RELEASE_(serviceName_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 3, 4, -1, -1 },
    { NULL, "LOrgJsonJSONObject;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEduUmassCsNioInterfacesIntegerPacketType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x8, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithId:withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType:withNSString:withInt:);
  methods[1].selector = @selector(initWithOrgJsonJSONObject:withEduUmassCsNioInterfacesStringifiable:);
  methods[2].selector = @selector(toJSONObjectImpl);
  methods[3].selector = @selector(getServiceName);
  methods[4].selector = @selector(getEpochNumber);
  methods[5].selector = @selector(getSummary);
  methods[6].selector = @selector(getRequestType);
  methods[7].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serviceName_", "LNSString;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "epochNumber_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;LEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType;LNSString;I", "(TNodeIDType;Ledu/umass/cs/reconfiguration/reconfigurationpackets/ReconfigurationPacket$PacketType;Ljava/lang/String;I)V", "LOrgJsonJSONObject;LEduUmassCsNioInterfacesStringifiable;", "LOrgJsonJSONException;", "(Lorg/json/JSONObject;Ledu/umass/cs/nio/interfaces/Stringifiable<TNodeIDType;>;)V", "main", "[LNSString;", "LEduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys;", "<NodeIDType:Ljava/lang/Object;>Ledu/umass/cs/reconfiguration/reconfigurationpackets/ReconfigurationPacket<TNodeIDType;>;Ledu/umass/cs/gigapaxos/interfaces/Request;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket = { "BasicReconfigurationPacket", "edu.umass.cs.reconfiguration.reconfigurationpackets", ptrTable, methods, fields, 7, 0x401, 8, 2, -1, 7, -1, 8, -1 };
  return &_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket;
}

@end

void EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_initWithId_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket *self, id initiator, EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType *t, NSString *name, jint epochNumber) {
  EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_initWithId_(self, initiator);
  [self setTypeWithId:t];
  JreStrongAssign(&self->serviceName_, name);
  self->epochNumber_ = epochNumber;
}

void EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket *self, OrgJsonJSONObject *json, id<EduUmassCsNioInterfacesStringifiable> unstringer) {
  EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(self, json, unstringer);
  JreStrongAssign(&self->serviceName_, [((OrgJsonJSONObject *) nil_chk(json)) getStringWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys, NAME))) description]]);
  self->epochNumber_ = [json getIntWithNSString:[((EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys, EPOCH))) description]];
}

void EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_mainWithNSStringArray_(IOSObjectArray *args) {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_initialize();
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *brc = create_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithJavaLangInteger_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_(JavaLangInteger_valueOfWithInt_(3), JreLoadEnum(EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType, DEMAND_REPORT), @"name1", 4);
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithId:brc];
  @try {
    [JreLoadStatic(JavaLangSystem, out) printlnWithId:create_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithOrgJsonJSONObject_([brc toJSONObject])];
  }
  @catch (OrgJsonJSONException *je) {
    [((OrgJsonJSONException *) nil_chk(je)) printStackTrace];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket)

J2OBJC_INITIALIZED_DEFN(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys)

EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys *EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_values_[3];

@implementation EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys

+ (IOSObjectArray *)values {
  return EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_values();
}

+ (EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys *)valueOfWithNSString:(NSString *)name {
  return EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LEduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NAME", "LEduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "EPOCH", "LEduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "COORDINATED", "LEduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys, NAME), &JreEnum(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys, EPOCH), &JreEnum(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys, COORDINATED), "LEduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket;", "Ljava/lang/Enum<Ledu/umass/cs/reconfiguration/reconfigurationpackets/BasicReconfigurationPacket$Keys;>;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys = { "Keys", "edu.umass.cs.reconfiguration.reconfigurationpackets", ptrTable, methods, fields, 7, 0x4019, 2, 3, 5, -1, -1, 6, -1 };
  return &_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys;
}

+ (void)initialize {
  if (self == [EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 3 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    id names[] = {
      @"NAME", @"EPOCH", @"COORDINATED",
    };
    for (jint i = 0; i < 3; i++) {
      (EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_values_[i] = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
      EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_initWithNSString_withInt_(e, names[i], i);
    }
    J2OBJC_SET_INITIALIZED(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys)
  }
}

@end

void EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_initWithNSString_withInt_(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_values() {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_initialize();
  return [IOSObjectArray arrayWithObjects:EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_values_ count:3 type:EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_class_()];
}

EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys *EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_valueOfWithNSString_(NSString *name) {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_initialize();
  for (int i = 0; i < 3; i++) {
    EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys *e = EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys *EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_fromOrdinal(NSUInteger ordinal) {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_Keys)

@implementation EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP

- (instancetype)initWithJavaLangInteger:(JavaLangInteger *)initiator
withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType:(EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType *)t
                           withNSString:(NSString *)name
                                withInt:(jint)epochNumber {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithJavaLangInteger_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_(self, initiator, t, name, epochNumber);
  return self;
}

- (instancetype)initWithOrgJsonJSONObject:(OrgJsonJSONObject *)json {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithOrgJsonJSONObject_(self, json);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaLangInteger:withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType:withNSString:withInt:);
  methods[1].selector = @selector(initWithOrgJsonJSONObject:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaLangInteger;LEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType;LNSString;I", "LOrgJsonJSONObject;", "LOrgJsonJSONException;", "LEduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket;", "mainWithNSStringArray:", "Ledu/umass/cs/reconfiguration/reconfigurationpackets/BasicReconfigurationPacket<Ljava/lang/Integer;>;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP = { "BRP", "edu.umass.cs.reconfiguration.reconfigurationpackets", ptrTable, methods, NULL, 7, 0x0, 2, 0, 3, -1, 4, 5, -1 };
  return &_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP;
}

@end

void EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithJavaLangInteger_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *self, JavaLangInteger *initiator, EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType *t, NSString *name, jint epochNumber) {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_initWithId_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_(self, initiator, t, name, epochNumber);
}

EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *new_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithJavaLangInteger_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_(JavaLangInteger *initiator, EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType *t, NSString *name, jint epochNumber) {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP, initWithJavaLangInteger_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_, initiator, t, name, epochNumber)
}

EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *create_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithJavaLangInteger_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_(JavaLangInteger *initiator, EduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType *t, NSString *name, jint epochNumber) {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP, initWithJavaLangInteger_withEduUmassCsReconfigurationReconfigurationpacketsReconfigurationPacket_PacketType_withNSString_withInt_, initiator, t, name, epochNumber)
}

void EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithOrgJsonJSONObject_(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *self, OrgJsonJSONObject *json) {
  EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_initWithOrgJsonJSONObject_withEduUmassCsNioInterfacesStringifiable_(self, json, create_EduUmassCsNioNioutilsStringifiableDefault_initWithId_(JavaLangInteger_valueOfWithInt_(0)));
}

EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *new_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithOrgJsonJSONObject_(OrgJsonJSONObject *json) {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP, initWithOrgJsonJSONObject_, json)
}

EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP *create_EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP_initWithOrgJsonJSONObject_(OrgJsonJSONObject *json) {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP, initWithOrgJsonJSONObject_, json)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsReconfigurationReconfigurationpacketsBasicReconfigurationPacket_1BRP)