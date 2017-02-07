//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/gigapaxos/paxospackets/PValuePacket.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "edu/umass/cs/gigapaxos/paxospackets/PValuePacket.h"
#include "edu/umass/cs/gigapaxos/paxospackets/PaxosPacket.h"
#include "edu/umass/cs/gigapaxos/paxospackets/ProposalPacket.h"
#include "edu/umass/cs/gigapaxos/paxospackets/RequestPacket.h"
#include "edu/umass/cs/gigapaxos/paxosutil/Ballot.h"
#include "java/lang/Boolean.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/nio/ByteBuffer.h"
#include "net/minidev/json/JSONObject.h"
#include "org/json/JSONObject.h"

@interface EduUmassCsGigapaxosPaxospacketsPValuePacket () {
 @public
  jboolean recovery_;
  jint medianCheckpointedSlot_;
  jboolean noCoalesce_;
}

@end

__attribute__((unused)) static void EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_initWithIOSClass_withNSString_withInt_(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields *self, IOSClass *type, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(EduUmassCsGigapaxosPaxospacketsPValuePacket)

@implementation EduUmassCsGigapaxosPaxospacketsPValuePacket

- (instancetype)initWithEduUmassCsGigapaxosPaxosutilBallot:(EduUmassCsGigapaxosPaxosutilBallot *)b
         withEduUmassCsGigapaxosPaxospacketsProposalPacket:(EduUmassCsGigapaxosPaxospacketsProposalPacket *)p {
  EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithEduUmassCsGigapaxosPaxosutilBallot_withEduUmassCsGigapaxosPaxospacketsProposalPacket_(self, b, p);
  return self;
}

- (instancetype)initWithEduUmassCsGigapaxosPaxospacketsPValuePacket:(EduUmassCsGigapaxosPaxospacketsPValuePacket *)pvalue {
  EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithEduUmassCsGigapaxosPaxospacketsPValuePacket_(self, pvalue);
  return self;
}

- (instancetype)initWithOrgJsonJSONObject:(OrgJsonJSONObject *)json {
  EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithOrgJsonJSONObject_(self, json);
  return self;
}

- (instancetype)initWithNetMinidevJsonJSONObject:(NetMinidevJsonJSONObject *)json {
  EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithNetMinidevJsonJSONObject_(self, json);
  return self;
}

- (instancetype)initWithJavaNioByteBuffer:(JavaNioByteBuffer *)bbuf {
  EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithJavaNioByteBuffer_(self, bbuf);
  return self;
}

- (EduUmassCsGigapaxosPaxospacketsPValuePacket *)makeDecisionWithInt:(jint)mcSlot {
  JreStrongAssign(&self->packetType_, JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_PaxosPacketType, DECISION));
  self->medianCheckpointedSlot_ = mcSlot;
  [self setStringifiedSelfWithNSString:nil];
  JreAssert(((!recovery_)), (@"edu/umass/cs/gigapaxos/paxospackets/PValuePacket.java:106 condition failed: assert (!recovery);"));
  return (self);
}

- (EduUmassCsGigapaxosPaxospacketsPValuePacket *)preempt {
  JreStrongAssign(&self->packetType_, JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_PaxosPacketType, PREEMPTED));
  return self;
}

- (jboolean)isCoalescable {
  return !self->noCoalesce_ && [((EduUmassCsGigapaxosPaxospacketsPaxosPacket_PaxosPacketType *) nil_chk([self getType])) isEqual:JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_PaxosPacketType, DECISION)];
}

- (jint)getMedianCheckpointedSlot {
  return self->medianCheckpointedSlot_;
}

- (void)setMedianCheckpointedSlotWithInt:(jint)slot {
  self->medianCheckpointedSlot_ = slot;
}

- (jboolean)isRecovery {
  return self->recovery_;
}

- (EduUmassCsGigapaxosPaxospacketsPValuePacket *)setRecovery {
  return [self setRecoveryWithBoolean:true];
}

- (EduUmassCsGigapaxosPaxospacketsPValuePacket *)setRecoveryWithBoolean:(jboolean)b {
  self->recovery_ = b;
  return self;
}

- (NSString *)getSummaryString {
  return JreStrcat("@$$$", ballot_, @", ", [super getSummaryString], ([self isRecovery] ? @"(recovery)" : @""));
}

- (OrgJsonJSONObject *)toJSONObjectImpl {
  OrgJsonJSONObject *json = [super toJSONObjectImpl];
  [((OrgJsonJSONObject *) nil_chk(json)) putWithNSString:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_NodeIDKeys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_NodeIDKeys, B))) description] withId:[((EduUmassCsGigapaxosPaxosutilBallot *) nil_chk(ballot_)) description]];
  [json putWithNSString:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, GC_S))) description] withInt:self->medianCheckpointedSlot_];
  if (self->recovery_) [json putWithNSString:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, RCVRY))) description] withBoolean:self->recovery_];
  if (self->noCoalesce_) [json putWithNSString:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, NO_COALESCE))) description] withBoolean:self->noCoalesce_];
  return json;
}

- (NetMinidevJsonJSONObject *)toJSONSmartImpl {
  NetMinidevJsonJSONObject *json = [super toJSONSmartImpl];
  [((NetMinidevJsonJSONObject *) nil_chk(json)) putWithId:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_NodeIDKeys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_NodeIDKeys, B))) description] withId:[((EduUmassCsGigapaxosPaxosutilBallot *) nil_chk(ballot_)) description]];
  [json putWithId:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, GC_S))) description] withId:JavaLangInteger_valueOfWithInt_(self->medianCheckpointedSlot_)];
  if (self->recovery_) [json putWithId:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, RCVRY))) description] withId:JavaLangBoolean_valueOfWithBoolean_(self->recovery_)];
  if (self->noCoalesce_) [json putWithId:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, NO_COALESCE))) description] withId:JavaLangBoolean_valueOfWithBoolean_(self->noCoalesce_)];
  return json;
}

- (EduUmassCsGigapaxosPaxospacketsPValuePacket *)setNoCoalesce {
  self->noCoalesce_ = true;
  return self;
}

- (EduUmassCsGigapaxosPaxospacketsPValuePacket *)getMetaDecision {
  EduUmassCsGigapaxosPaxospacketsPValuePacket *meta = create_EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithEduUmassCsGigapaxosPaxosutilBallot_withEduUmassCsGigapaxosPaxospacketsProposalPacket_(self->ballot_, create_EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithInt_withEduUmassCsGigapaxosPaxospacketsRequestPacket_(self->slot_, [create_EduUmassCsGigapaxosPaxospacketsRequestPacket_initWithLong_withNSString_withBoolean_withEduUmassCsGigapaxosPaxospacketsRequestPacket_(self->requestID_, nil, self->stop_, self) getFirstOnly]));
  JreStrongAssign(&meta->packetType_, JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_PaxosPacketType, DECISION));
  return meta;
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  EduUmassCsGigapaxosPaxospacketsPValuePacket_mainWithNSStringArray_(args);
}

- (void)dealloc {
  RELEASE_(ballot_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 3, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, 3, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 5, 6, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosPaxospacketsPValuePacket;", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosPaxospacketsPValuePacket;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 9, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosPaxospacketsPValuePacket;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosPaxospacketsPValuePacket;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsonJSONObject;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LNetMinidevJsonJSONObject;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosPaxospacketsPValuePacket;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosPaxospacketsPValuePacket;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 12, 13, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithEduUmassCsGigapaxosPaxosutilBallot:withEduUmassCsGigapaxosPaxospacketsProposalPacket:);
  methods[1].selector = @selector(initWithEduUmassCsGigapaxosPaxospacketsPValuePacket:);
  methods[2].selector = @selector(initWithOrgJsonJSONObject:);
  methods[3].selector = @selector(initWithNetMinidevJsonJSONObject:);
  methods[4].selector = @selector(initWithJavaNioByteBuffer:);
  methods[5].selector = @selector(makeDecisionWithInt:);
  methods[6].selector = @selector(preempt);
  methods[7].selector = @selector(isCoalescable);
  methods[8].selector = @selector(getMedianCheckpointedSlot);
  methods[9].selector = @selector(setMedianCheckpointedSlotWithInt:);
  methods[10].selector = @selector(isRecovery);
  methods[11].selector = @selector(setRecovery);
  methods[12].selector = @selector(setRecoveryWithBoolean:);
  methods[13].selector = @selector(getSummaryString);
  methods[14].selector = @selector(toJSONObjectImpl);
  methods[15].selector = @selector(toJSONSmartImpl);
  methods[16].selector = @selector(setNoCoalesce);
  methods[17].selector = @selector(getMetaDecision);
  methods[18].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ballot_", "LEduUmassCsGigapaxosPaxosutilBallot;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "recovery_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "medianCheckpointedSlot_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "noCoalesce_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "SIZEOF_PVALUE", "I", .constantValue.asInt = EduUmassCsGigapaxosPaxospacketsPValuePacket_SIZEOF_PVALUE, 0x1c, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LEduUmassCsGigapaxosPaxosutilBallot;LEduUmassCsGigapaxosPaxospacketsProposalPacket;", "LEduUmassCsGigapaxosPaxospacketsPValuePacket;", "LOrgJsonJSONObject;", "LOrgJsonJSONException;", "LNetMinidevJsonJSONObject;", "LJavaNioByteBuffer;", "LJavaIoUnsupportedEncodingException;LJavaNetUnknownHostException;", "makeDecision", "I", "setMedianCheckpointedSlot", "setRecovery", "Z", "main", "[LNSString;", "LEduUmassCsGigapaxosPaxospacketsPValuePacket_Fields;" };
  static const J2ObjcClassInfo _EduUmassCsGigapaxosPaxospacketsPValuePacket = { "PValuePacket", "edu.umass.cs.gigapaxos.paxospackets", ptrTable, methods, fields, 7, 0x1, 19, 5, -1, 14, -1, -1, -1 };
  return &_EduUmassCsGigapaxosPaxospacketsPValuePacket;
}

+ (void)initialize {
  if (self == [EduUmassCsGigapaxosPaxospacketsPValuePacket class]) {
    {
      EduUmassCsGigapaxosPaxospacketsPaxosPacket_checkFieldsWithIOSClass_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_GetTypeArray_(EduUmassCsGigapaxosPaxospacketsPValuePacket_class_(), EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_values());
    }
    J2OBJC_SET_INITIALIZED(EduUmassCsGigapaxosPaxospacketsPValuePacket)
  }
}

@end

void EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithEduUmassCsGigapaxosPaxosutilBallot_withEduUmassCsGigapaxosPaxospacketsProposalPacket_(EduUmassCsGigapaxosPaxospacketsPValuePacket *self, EduUmassCsGigapaxosPaxosutilBallot *b, EduUmassCsGigapaxosPaxospacketsProposalPacket *p) {
  EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithEduUmassCsGigapaxosPaxospacketsProposalPacket_(self, p);
  self->noCoalesce_ = false;
  JreStrongAssign(&self->ballot_, b);
  self->medianCheckpointedSlot_ = -1;
  self->recovery_ = false;
}

EduUmassCsGigapaxosPaxospacketsPValuePacket *new_EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithEduUmassCsGigapaxosPaxosutilBallot_withEduUmassCsGigapaxosPaxospacketsProposalPacket_(EduUmassCsGigapaxosPaxosutilBallot *b, EduUmassCsGigapaxosPaxospacketsProposalPacket *p) {
  J2OBJC_NEW_IMPL(EduUmassCsGigapaxosPaxospacketsPValuePacket, initWithEduUmassCsGigapaxosPaxosutilBallot_withEduUmassCsGigapaxosPaxospacketsProposalPacket_, b, p)
}

EduUmassCsGigapaxosPaxospacketsPValuePacket *create_EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithEduUmassCsGigapaxosPaxosutilBallot_withEduUmassCsGigapaxosPaxospacketsProposalPacket_(EduUmassCsGigapaxosPaxosutilBallot *b, EduUmassCsGigapaxosPaxospacketsProposalPacket *p) {
  J2OBJC_CREATE_IMPL(EduUmassCsGigapaxosPaxospacketsPValuePacket, initWithEduUmassCsGigapaxosPaxosutilBallot_withEduUmassCsGigapaxosPaxospacketsProposalPacket_, b, p)
}

void EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithEduUmassCsGigapaxosPaxospacketsPValuePacket_(EduUmassCsGigapaxosPaxospacketsPValuePacket *self, EduUmassCsGigapaxosPaxospacketsPValuePacket *pvalue) {
  EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithEduUmassCsGigapaxosPaxospacketsProposalPacket_(self, pvalue);
  self->noCoalesce_ = false;
  JreStrongAssign(&self->ballot_, ((EduUmassCsGigapaxosPaxospacketsPValuePacket *) nil_chk(pvalue))->ballot_);
  self->medianCheckpointedSlot_ = pvalue->medianCheckpointedSlot_;
  JreStrongAssign(&self->packetType_, [pvalue getType]);
  self->recovery_ = false;
}

EduUmassCsGigapaxosPaxospacketsPValuePacket *new_EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithEduUmassCsGigapaxosPaxospacketsPValuePacket_(EduUmassCsGigapaxosPaxospacketsPValuePacket *pvalue) {
  J2OBJC_NEW_IMPL(EduUmassCsGigapaxosPaxospacketsPValuePacket, initWithEduUmassCsGigapaxosPaxospacketsPValuePacket_, pvalue)
}

EduUmassCsGigapaxosPaxospacketsPValuePacket *create_EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithEduUmassCsGigapaxosPaxospacketsPValuePacket_(EduUmassCsGigapaxosPaxospacketsPValuePacket *pvalue) {
  J2OBJC_CREATE_IMPL(EduUmassCsGigapaxosPaxospacketsPValuePacket, initWithEduUmassCsGigapaxosPaxospacketsPValuePacket_, pvalue)
}

void EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithOrgJsonJSONObject_(EduUmassCsGigapaxosPaxospacketsPValuePacket *self, OrgJsonJSONObject *json) {
  EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithOrgJsonJSONObject_(self, json);
  self->noCoalesce_ = false;
  JreStrongAssignAndConsume(&self->ballot_, new_EduUmassCsGigapaxosPaxosutilBallot_initWithNSString_([((OrgJsonJSONObject *) nil_chk(json)) getStringWithNSString:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_NodeIDKeys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_NodeIDKeys, B))) description]]));
  self->medianCheckpointedSlot_ = [json getIntWithNSString:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, GC_S))) description]];
  self->recovery_ = [json optBooleanWithNSString:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, RCVRY))) description]];
  JreStrongAssign(&self->packetType_, EduUmassCsGigapaxosPaxospacketsPaxosPacket_getPaxosPacketTypeWithOrgJsonJSONObject_(json));
  self->noCoalesce_ = [json optBooleanWithNSString:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, NO_COALESCE))) description]];
}

EduUmassCsGigapaxosPaxospacketsPValuePacket *new_EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithOrgJsonJSONObject_(OrgJsonJSONObject *json) {
  J2OBJC_NEW_IMPL(EduUmassCsGigapaxosPaxospacketsPValuePacket, initWithOrgJsonJSONObject_, json)
}

EduUmassCsGigapaxosPaxospacketsPValuePacket *create_EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithOrgJsonJSONObject_(OrgJsonJSONObject *json) {
  J2OBJC_CREATE_IMPL(EduUmassCsGigapaxosPaxospacketsPValuePacket, initWithOrgJsonJSONObject_, json)
}

void EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithNetMinidevJsonJSONObject_(EduUmassCsGigapaxosPaxospacketsPValuePacket *self, NetMinidevJsonJSONObject *json) {
  EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithNetMinidevJsonJSONObject_(self, json);
  self->noCoalesce_ = false;
  JreStrongAssignAndConsume(&self->ballot_, new_EduUmassCsGigapaxosPaxosutilBallot_initWithNSString_((NSString *) cast_chk([((NetMinidevJsonJSONObject *) nil_chk(json)) getWithId:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_NodeIDKeys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_NodeIDKeys, B))) description]], [NSString class])));
  self->medianCheckpointedSlot_ = [((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk([json getWithId:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, GC_S))) description]], [JavaLangInteger class]))) intValue];
  self->recovery_ = [json containsKeyWithId:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, RCVRY))) description]] ? [((JavaLangBoolean *) nil_chk((JavaLangBoolean *) cast_chk([json getWithId:[JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, RCVRY) description]], [JavaLangBoolean class]))) booleanValue] : false;
  JreStrongAssign(&self->packetType_, EduUmassCsGigapaxosPaxospacketsPaxosPacket_getPaxosPacketTypeWithNetMinidevJsonJSONObject_(json));
  self->noCoalesce_ = [json containsKeyWithId:[((EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys *) nil_chk(JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, NO_COALESCE))) description]] ? [((JavaLangBoolean *) nil_chk((JavaLangBoolean *) cast_chk([json getWithId:[JreLoadEnum(EduUmassCsGigapaxosPaxospacketsPaxosPacket_Keys, NO_COALESCE) description]], [JavaLangBoolean class]))) booleanValue] : false;
}

EduUmassCsGigapaxosPaxospacketsPValuePacket *new_EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithNetMinidevJsonJSONObject_(NetMinidevJsonJSONObject *json) {
  J2OBJC_NEW_IMPL(EduUmassCsGigapaxosPaxospacketsPValuePacket, initWithNetMinidevJsonJSONObject_, json)
}

EduUmassCsGigapaxosPaxospacketsPValuePacket *create_EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithNetMinidevJsonJSONObject_(NetMinidevJsonJSONObject *json) {
  J2OBJC_CREATE_IMPL(EduUmassCsGigapaxosPaxospacketsPValuePacket, initWithNetMinidevJsonJSONObject_, json)
}

void EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithJavaNioByteBuffer_(EduUmassCsGigapaxosPaxospacketsPValuePacket *self, JavaNioByteBuffer *bbuf) {
  EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithJavaNioByteBuffer_(self, bbuf);
  self->noCoalesce_ = false;
  JreStrongAssignAndConsume(&self->ballot_, new_EduUmassCsGigapaxosPaxosutilBallot_initWithInt_withInt_([((JavaNioByteBuffer *) nil_chk(bbuf)) getInt], [bbuf getInt]));
  self->recovery_ = ([bbuf get] == (jbyte) 1);
  self->medianCheckpointedSlot_ = [bbuf getInt];
  self->noCoalesce_ = ([bbuf get] == (jbyte) 1);
}

EduUmassCsGigapaxosPaxospacketsPValuePacket *new_EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithJavaNioByteBuffer_(JavaNioByteBuffer *bbuf) {
  J2OBJC_NEW_IMPL(EduUmassCsGigapaxosPaxospacketsPValuePacket, initWithJavaNioByteBuffer_, bbuf)
}

EduUmassCsGigapaxosPaxospacketsPValuePacket *create_EduUmassCsGigapaxosPaxospacketsPValuePacket_initWithJavaNioByteBuffer_(JavaNioByteBuffer *bbuf) {
  J2OBJC_CREATE_IMPL(EduUmassCsGigapaxosPaxospacketsPValuePacket, initWithJavaNioByteBuffer_, bbuf)
}

void EduUmassCsGigapaxosPaxospacketsPValuePacket_mainWithNSStringArray_(IOSObjectArray *args) {
  EduUmassCsGigapaxosPaxospacketsPValuePacket_initialize();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsGigapaxosPaxospacketsPValuePacket)

J2OBJC_INITIALIZED_DEFN(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields)

EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields *EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_values_[4];

@implementation EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields

- (IOSClass *)getType {
  return self->type_;
}

+ (IOSObjectArray *)values {
  return EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_values();
}

+ (EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields *)valueOfWithNSString:(NSString *)name {
  return EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LIOSClass;", 0x1, -1, -1, -1, 0, -1, -1 },
    { NULL, "[LEduUmassCsGigapaxosPaxospacketsPValuePacket_Fields;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosPaxospacketsPValuePacket_Fields;", 0x9, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getType);
  methods[1].selector = @selector(values);
  methods[2].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ballot", "LEduUmassCsGigapaxosPaxospacketsPValuePacket_Fields;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "recovery", "LEduUmassCsGigapaxosPaxospacketsPValuePacket_Fields;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "medianCheckpointedSlot", "LEduUmassCsGigapaxosPaxospacketsPValuePacket_Fields;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "noCoalesce", "LEduUmassCsGigapaxosPaxospacketsPValuePacket_Fields;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "type_", "LIOSClass;", .constantValue.asLong = 0, 0x10, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "()Ljava/lang/Class<*>;", "valueOf", "LNSString;", &JreEnum(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields, ballot), &JreEnum(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields, recovery), &JreEnum(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields, medianCheckpointedSlot), &JreEnum(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields, noCoalesce), "Ljava/lang/Class<*>;", "LEduUmassCsGigapaxosPaxospacketsPValuePacket;", "Ljava/lang/Enum<Ledu/umass/cs/gigapaxos/paxospackets/PValuePacket$Fields;>;Ledu/umass/cs/gigapaxos/paxospackets/PaxosPacket$GetType;" };
  static const J2ObjcClassInfo _EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields = { "Fields", "edu.umass.cs.gigapaxos.paxospackets", ptrTable, methods, fields, 7, 0x4018, 3, 5, 8, -1, -1, 9, -1 };
  return &_EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields;
}

+ (void)initialize {
  if (self == [EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 4 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields, ballot) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_initWithIOSClass_withNSString_withInt_(e, EduUmassCsGigapaxosPaxosutilBallot_class_(), @"ballot", 0);
    (JreEnum(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields, recovery) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_initWithIOSClass_withNSString_withInt_(e, [IOSClass booleanClass], @"recovery", 1);
    (JreEnum(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields, medianCheckpointedSlot) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_initWithIOSClass_withNSString_withInt_(e, [IOSClass intClass], @"medianCheckpointedSlot", 2);
    (JreEnum(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields, noCoalesce) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_initWithIOSClass_withNSString_withInt_(e, [IOSClass booleanClass], @"noCoalesce", 3);
    J2OBJC_SET_INITIALIZED(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields)
  }
}

@end

void EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_initWithIOSClass_withNSString_withInt_(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields *self, IOSClass *type, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  JreStrongAssign(&self->type_, type);
}

IOSObjectArray *EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_values() {
  EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_initialize();
  return [IOSObjectArray arrayWithObjects:EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_values_ count:4 type:EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_class_()];
}

EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields *EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_valueOfWithNSString_(NSString *name) {
  EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_initialize();
  for (int i = 0; i < 4; i++) {
    EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields *e = EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields *EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_fromOrdinal(NSUInteger ordinal) {
  EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_initialize();
  if (ordinal >= 4) {
    return nil;
  }
  return EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsGigapaxosPaxospacketsPValuePacket_Fields)