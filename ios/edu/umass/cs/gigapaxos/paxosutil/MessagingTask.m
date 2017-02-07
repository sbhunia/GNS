//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/gigapaxos/paxosutil/MessagingTask.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "edu/umass/cs/gigapaxos/paxospackets/PaxosPacket.h"
#include "edu/umass/cs/gigapaxos/paxosutil/MessagingTask.h"
#include "edu/umass/cs/utils/Util.h"

@interface EduUmassCsGigapaxosPaxosutilMessagingTask ()

+ (jboolean)arrayContainsWithIntArray:(IOSIntArray *)array
                              withInt:(jint)member;

@end

__attribute__((unused)) static jboolean EduUmassCsGigapaxosPaxosutilMessagingTask_isEmptyMessaging(EduUmassCsGigapaxosPaxosutilMessagingTask *self);

__attribute__((unused)) static jboolean EduUmassCsGigapaxosPaxosutilMessagingTask_arrayContainsWithIntArray_withInt_(IOSIntArray *array, jint member);

@implementation EduUmassCsGigapaxosPaxosutilMessagingTask

- (instancetype)initWithInt:(jint)destID
withEduUmassCsGigapaxosPaxospacketsPaxosPacket:(EduUmassCsGigapaxosPaxospacketsPaxosPacket *)pkt {
  EduUmassCsGigapaxosPaxosutilMessagingTask_initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_(self, destID, pkt);
  return self;
}

- (instancetype)initWithIntArray:(IOSIntArray *)destIDs
withEduUmassCsGigapaxosPaxospacketsPaxosPacket:(EduUmassCsGigapaxosPaxospacketsPaxosPacket *)pkt {
  EduUmassCsGigapaxosPaxosutilMessagingTask_initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_(self, destIDs, pkt);
  return self;
}

- (instancetype)initWithInt:(jint)destID
withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray:(IOSObjectArray *)pkts {
  EduUmassCsGigapaxosPaxosutilMessagingTask_initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_(self, destID, pkts);
  return self;
}

- (instancetype)initWithIntArray:(IOSIntArray *)destIDs
withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray:(IOSObjectArray *)pkts {
  EduUmassCsGigapaxosPaxosutilMessagingTask_initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_(self, destIDs, pkts);
  return self;
}

- (void)putPaxosIDVersionWithNSString:(NSString *)paxosID
                              withInt:(jint)version_ {
  if (msgs_ == nil) return;
  for (jint i = 0; i < msgs_->size_; i++) {
    JreAssert(((IOSObjectArray_Get(msgs_, i) != nil)), (JreStrcat("$I$I$", @"Incorrect usage: MessagingTask should not be instantiated with null messages, msg ", i, @" out of ", msgs_->size_, @" is null")));
    [((EduUmassCsGigapaxosPaxospacketsPaxosPacket *) nil_chk(IOSObjectArray_Get(msgs_, i))) putPaxosIDWithNSString:paxosID withInt:version_];
  }
}

- (jboolean)isEmpty {
  return EduUmassCsGigapaxosPaxosutilMessagingTask_isEmptyMessaging(self);
}

- (jboolean)isEmptyMessaging {
  return EduUmassCsGigapaxosPaxosutilMessagingTask_isEmptyMessaging(self);
}

+ (IOSObjectArray *)toPaxosPacketArrayWithNSObjectArray:(IOSObjectArray *)ppChildArray {
  return EduUmassCsGigapaxosPaxosutilMessagingTask_toPaxosPacketArrayWithNSObjectArray_(ppChildArray);
}

+ (IOSObjectArray *)toPaxosPacketArrayWithEduUmassCsGigapaxosPaxospacketsPaxosPacketArray:(IOSObjectArray *)array1
                                      withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray:(IOSObjectArray *)array2 {
  return EduUmassCsGigapaxosPaxosutilMessagingTask_toPaxosPacketArrayWithEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_(array1, array2);
}

- (IOSObjectArray *)toArray {
  IOSObjectArray *mtasks = [IOSObjectArray arrayWithLength:1 type:EduUmassCsGigapaxosPaxosutilMessagingTask_class_()];
  IOSObjectArray_Set(mtasks, 0, self);
  return mtasks;
}

+ (EduUmassCsGigapaxosPaxosutilMessagingTask *)getLoopbackWithEduUmassCsGigapaxosPaxosutilMessagingTask:(EduUmassCsGigapaxosPaxosutilMessagingTask *)mtask
                                                                                                withInt:(jint)myID {
  return EduUmassCsGigapaxosPaxosutilMessagingTask_getLoopbackWithEduUmassCsGigapaxosPaxosutilMessagingTask_withInt_(mtask, myID);
}

+ (EduUmassCsGigapaxosPaxosutilMessagingTask *)getNonLoopbackWithEduUmassCsGigapaxosPaxosutilMessagingTask:(EduUmassCsGigapaxosPaxosutilMessagingTask *)mtask
                                                                                                   withInt:(jint)myID {
  return EduUmassCsGigapaxosPaxosutilMessagingTask_getNonLoopbackWithEduUmassCsGigapaxosPaxosutilMessagingTask_withInt_(mtask, myID);
}

+ (jboolean)arrayContainsWithIntArray:(IOSIntArray *)array
                              withInt:(jint)member {
  return EduUmassCsGigapaxosPaxosutilMessagingTask_arrayContainsWithIntArray_withInt_(array, member);
}

- (NSString *)description {
  if (((IOSObjectArray *) nil_chk(msgs_))->size_ == 0) return @"NULL";
  NSString *s = ([((EduUmassCsGigapaxosPaxospacketsPaxosPacket_PaxosPacketType *) nil_chk([((EduUmassCsGigapaxosPaxospacketsPaxosPacket *) nil_chk(IOSObjectArray_Get(msgs_, 0))) getType])) description]);
  JreStrAppend(&s, "$", @" to recipients: [");
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(self->recipients_))->size_; i++) {
    JreStrAppend(&s, "IC", IOSIntArray_Get(self->recipients_, i), ' ');
  }
  JreStrAppend(&s, "$", @"]; Message");
  JreStrAppend(&s, "$", (msgs_->size_ > 1) ? @"s:\n[" : @": ");
  for (jint i = 0; i < msgs_->size_; i++) {
    JreStrAppend(&s, "$", (msgs_->size_ > 1 ? @"\n    " : @""));
    if (i == 5 && msgs_->size_ > 25) {
      JreStrAppend(&s, "$IC", @".... (skipping ", (msgs_->size_ - 9), ')');
      i = msgs_->size_ - 6;
    }
    else JreStrAppend(&s, "@", [((EduUmassCsGigapaxosPaxospacketsPaxosPacket *) nil_chk(IOSObjectArray_Get(msgs_, i))) getSummary]);
  }
  if (msgs_->size_ > 1) JreStrAppend(&s, "$", @"\n]");
  return s;
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  EduUmassCsGigapaxosPaxosutilMessagingTask_mainWithNSStringArray_(args);
}

+ (IOSObjectArray *)combineWithEduUmassCsGigapaxosPaxosutilMessagingTaskArray:(IOSObjectArray *)array1
                           withEduUmassCsGigapaxosPaxosutilMessagingTaskArray:(IOSObjectArray *)array2 {
  return EduUmassCsGigapaxosPaxosutilMessagingTask_combineWithEduUmassCsGigapaxosPaxosutilMessagingTaskArray_withEduUmassCsGigapaxosPaxosutilMessagingTaskArray_(array1, array2);
}

+ (IOSObjectArray *)combineWithEduUmassCsGigapaxosPaxosutilMessagingTask:(EduUmassCsGigapaxosPaxosutilMessagingTask *)mtask
                      withEduUmassCsGigapaxosPaxosutilMessagingTaskArray:(IOSObjectArray *)array {
  return EduUmassCsGigapaxosPaxosutilMessagingTask_combineWithEduUmassCsGigapaxosPaxosutilMessagingTask_withEduUmassCsGigapaxosPaxosutilMessagingTaskArray_(mtask, array);
}

- (void)dealloc {
  RELEASE_(recipients_);
  RELEASE_(msgs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LEduUmassCsGigapaxosPaxospacketsPaxosPacket;", 0x9, 6, 7, -1, -1, -1, -1 },
    { NULL, "[LEduUmassCsGigapaxosPaxospacketsPaxosPacket;", 0x9, 6, 8, -1, -1, -1, -1 },
    { NULL, "[LEduUmassCsGigapaxosPaxosutilMessagingTask;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosPaxosutilMessagingTask;", 0x9, 9, 10, -1, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosPaxosutilMessagingTask;", 0x9, 11, 10, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 12, 13, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 14, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 15, 16, -1, -1, -1, -1 },
    { NULL, "[LEduUmassCsGigapaxosPaxosutilMessagingTask;", 0x9, 17, 18, -1, -1, -1, -1 },
    { NULL, "[LEduUmassCsGigapaxosPaxosutilMessagingTask;", 0x9, 17, 19, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withEduUmassCsGigapaxosPaxospacketsPaxosPacket:);
  methods[1].selector = @selector(initWithIntArray:withEduUmassCsGigapaxosPaxospacketsPaxosPacket:);
  methods[2].selector = @selector(initWithInt:withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray:);
  methods[3].selector = @selector(initWithIntArray:withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray:);
  methods[4].selector = @selector(putPaxosIDVersionWithNSString:withInt:);
  methods[5].selector = @selector(isEmpty);
  methods[6].selector = @selector(isEmptyMessaging);
  methods[7].selector = @selector(toPaxosPacketArrayWithNSObjectArray:);
  methods[8].selector = @selector(toPaxosPacketArrayWithEduUmassCsGigapaxosPaxospacketsPaxosPacketArray:withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray:);
  methods[9].selector = @selector(toArray);
  methods[10].selector = @selector(getLoopbackWithEduUmassCsGigapaxosPaxosutilMessagingTask:withInt:);
  methods[11].selector = @selector(getNonLoopbackWithEduUmassCsGigapaxosPaxosutilMessagingTask:withInt:);
  methods[12].selector = @selector(arrayContainsWithIntArray:withInt:);
  methods[13].selector = @selector(description);
  methods[14].selector = @selector(mainWithNSStringArray:);
  methods[15].selector = @selector(combineWithEduUmassCsGigapaxosPaxosutilMessagingTaskArray:withEduUmassCsGigapaxosPaxosutilMessagingTaskArray:);
  methods[16].selector = @selector(combineWithEduUmassCsGigapaxosPaxosutilMessagingTask:withEduUmassCsGigapaxosPaxosutilMessagingTaskArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "recipients_", "[I", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "msgs_", "[LEduUmassCsGigapaxosPaxospacketsPaxosPacket;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ILEduUmassCsGigapaxosPaxospacketsPaxosPacket;", "[ILEduUmassCsGigapaxosPaxospacketsPaxosPacket;", "I[LEduUmassCsGigapaxosPaxospacketsPaxosPacket;", "[I[LEduUmassCsGigapaxosPaxospacketsPaxosPacket;", "putPaxosIDVersion", "LNSString;I", "toPaxosPacketArray", "[LNSObject;", "[LEduUmassCsGigapaxosPaxospacketsPaxosPacket;[LEduUmassCsGigapaxosPaxospacketsPaxosPacket;", "getLoopback", "LEduUmassCsGigapaxosPaxosutilMessagingTask;I", "getNonLoopback", "arrayContains", "[II", "toString", "main", "[LNSString;", "combine", "[LEduUmassCsGigapaxosPaxosutilMessagingTask;[LEduUmassCsGigapaxosPaxosutilMessagingTask;", "LEduUmassCsGigapaxosPaxosutilMessagingTask;[LEduUmassCsGigapaxosPaxosutilMessagingTask;" };
  static const J2ObjcClassInfo _EduUmassCsGigapaxosPaxosutilMessagingTask = { "MessagingTask", "edu.umass.cs.gigapaxos.paxosutil", ptrTable, methods, fields, 7, 0x1, 17, 2, -1, -1, -1, -1, -1 };
  return &_EduUmassCsGigapaxosPaxosutilMessagingTask;
}

@end

void EduUmassCsGigapaxosPaxosutilMessagingTask_initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_(EduUmassCsGigapaxosPaxosutilMessagingTask *self, jint destID, EduUmassCsGigapaxosPaxospacketsPaxosPacket *pkt) {
  NSObject_init(self);
  JreAssert(((pkt != nil)), (@"Incorrect usage: MessagingTask should not be instantiated with no messages"));
  JreStrongAssignAndConsume(&self->recipients_, [IOSIntArray newArrayWithLength:1]);
  *IOSIntArray_GetRef(self->recipients_, 0) = destID;
  JreStrongAssignAndConsume(&self->msgs_, [IOSObjectArray newArrayWithLength:pkt == nil ? 0 : 1 type:EduUmassCsGigapaxosPaxospacketsPaxosPacket_class_()]);
  if (pkt != nil) IOSObjectArray_Set(self->msgs_, 0, pkt);
}

EduUmassCsGigapaxosPaxosutilMessagingTask *new_EduUmassCsGigapaxosPaxosutilMessagingTask_initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_(jint destID, EduUmassCsGigapaxosPaxospacketsPaxosPacket *pkt) {
  J2OBJC_NEW_IMPL(EduUmassCsGigapaxosPaxosutilMessagingTask, initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_, destID, pkt)
}

EduUmassCsGigapaxosPaxosutilMessagingTask *create_EduUmassCsGigapaxosPaxosutilMessagingTask_initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_(jint destID, EduUmassCsGigapaxosPaxospacketsPaxosPacket *pkt) {
  J2OBJC_CREATE_IMPL(EduUmassCsGigapaxosPaxosutilMessagingTask, initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_, destID, pkt)
}

void EduUmassCsGigapaxosPaxosutilMessagingTask_initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_(EduUmassCsGigapaxosPaxosutilMessagingTask *self, IOSIntArray *destIDs, EduUmassCsGigapaxosPaxospacketsPaxosPacket *pkt) {
  NSObject_init(self);
  JreAssert(((pkt != nil && destIDs != nil)), (@"Incorrect usage: MessagingTask should not be instantiated with null messages or destinations"));
  JreStrongAssign(&self->recipients_, destIDs);
  JreStrongAssignAndConsume(&self->msgs_, [IOSObjectArray newArrayWithLength:pkt == nil ? 0 : 1 type:EduUmassCsGigapaxosPaxospacketsPaxosPacket_class_()]);
  if (pkt != nil) IOSObjectArray_Set(self->msgs_, 0, pkt);
}

EduUmassCsGigapaxosPaxosutilMessagingTask *new_EduUmassCsGigapaxosPaxosutilMessagingTask_initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_(IOSIntArray *destIDs, EduUmassCsGigapaxosPaxospacketsPaxosPacket *pkt) {
  J2OBJC_NEW_IMPL(EduUmassCsGigapaxosPaxosutilMessagingTask, initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_, destIDs, pkt)
}

EduUmassCsGigapaxosPaxosutilMessagingTask *create_EduUmassCsGigapaxosPaxosutilMessagingTask_initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_(IOSIntArray *destIDs, EduUmassCsGigapaxosPaxospacketsPaxosPacket *pkt) {
  J2OBJC_CREATE_IMPL(EduUmassCsGigapaxosPaxosutilMessagingTask, initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacket_, destIDs, pkt)
}

void EduUmassCsGigapaxosPaxosutilMessagingTask_initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_(EduUmassCsGigapaxosPaxosutilMessagingTask *self, jint destID, IOSObjectArray *pkts) {
  NSObject_init(self);
  JreAssert(((pkts != nil && pkts->size_ > 0 && IOSObjectArray_Get(pkts, 0) != nil)), (@"Incorrect usage: MessagingTask should not be instantiated with no messages"));
  JreStrongAssignAndConsume(&self->recipients_, [IOSIntArray newArrayWithLength:1]);
  *IOSIntArray_GetRef(self->recipients_, 0) = destID;
  JreStrongAssign(&self->msgs_, pkts == nil ? [IOSObjectArray arrayWithLength:0 type:EduUmassCsGigapaxosPaxospacketsPaxosPacket_class_()] : pkts);
}

EduUmassCsGigapaxosPaxosutilMessagingTask *new_EduUmassCsGigapaxosPaxosutilMessagingTask_initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_(jint destID, IOSObjectArray *pkts) {
  J2OBJC_NEW_IMPL(EduUmassCsGigapaxosPaxosutilMessagingTask, initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_, destID, pkts)
}

EduUmassCsGigapaxosPaxosutilMessagingTask *create_EduUmassCsGigapaxosPaxosutilMessagingTask_initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_(jint destID, IOSObjectArray *pkts) {
  J2OBJC_CREATE_IMPL(EduUmassCsGigapaxosPaxosutilMessagingTask, initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_, destID, pkts)
}

void EduUmassCsGigapaxosPaxosutilMessagingTask_initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_(EduUmassCsGigapaxosPaxosutilMessagingTask *self, IOSIntArray *destIDs, IOSObjectArray *pkts) {
  NSObject_init(self);
  JreAssert(((pkts != nil && destIDs != nil)), (@"Incorrect usage: MessagingTask should not be instantiated with null messages or destinations"));
  {
    IOSObjectArray *a__ = pkts;
    EduUmassCsGigapaxosPaxospacketsPaxosPacket * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    EduUmassCsGigapaxosPaxospacketsPaxosPacket * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id obj = *b__++;
      JreAssert(((obj != nil)), (@"Incorrect usage: MessagingTask should not be instantiated with null messages"));
    }
  }
  JreStrongAssign(&self->recipients_, (destIDs == nil ? [IOSIntArray arrayWithLength:0] : destIDs));
  JreStrongAssign(&self->msgs_, pkts == nil ? [IOSObjectArray arrayWithLength:0 type:EduUmassCsGigapaxosPaxospacketsPaxosPacket_class_()] : pkts);
}

EduUmassCsGigapaxosPaxosutilMessagingTask *new_EduUmassCsGigapaxosPaxosutilMessagingTask_initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_(IOSIntArray *destIDs, IOSObjectArray *pkts) {
  J2OBJC_NEW_IMPL(EduUmassCsGigapaxosPaxosutilMessagingTask, initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_, destIDs, pkts)
}

EduUmassCsGigapaxosPaxosutilMessagingTask *create_EduUmassCsGigapaxosPaxosutilMessagingTask_initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_(IOSIntArray *destIDs, IOSObjectArray *pkts) {
  J2OBJC_CREATE_IMPL(EduUmassCsGigapaxosPaxosutilMessagingTask, initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_, destIDs, pkts)
}

jboolean EduUmassCsGigapaxosPaxosutilMessagingTask_isEmptyMessaging(EduUmassCsGigapaxosPaxosutilMessagingTask *self) {
  return self->msgs_ == nil || self->msgs_->size_ == 0 || self->recipients_ == nil || self->recipients_->size_ == 0;
}

IOSObjectArray *EduUmassCsGigapaxosPaxosutilMessagingTask_toPaxosPacketArrayWithNSObjectArray_(IOSObjectArray *ppChildArray) {
  EduUmassCsGigapaxosPaxosutilMessagingTask_initialize();
  JreAssert(((ppChildArray != nil && ppChildArray->size_ > 0)), (@"edu/umass/cs/gigapaxos/paxosutil/MessagingTask.java:77 condition failed: assert (ppChildArray != null && ppChildArray.length > 0);"));
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(ppChildArray))->size_; i++) JreAssert(((IOSObjectArray_Get(ppChildArray, i) != nil)), (JreStrcat("$I$I$", @"Incorrect usage: MessagingTask should not be instantiated with null messages, msg ", i, @" out of ", ppChildArray->size_, @" is null")));
  IOSObjectArray *ppArray = [IOSObjectArray arrayWithLength:ppChildArray->size_ type:EduUmassCsGigapaxosPaxospacketsPaxosPacket_class_()];
  for (jint i = 0; i < ppChildArray->size_; i++) {
    JreAssert((([IOSObjectArray_Get(ppChildArray, i) isKindOfClass:[EduUmassCsGigapaxosPaxospacketsPaxosPacket class]])), (@"Incorrect usage: MessagingTask can only take PaxosPacket objects"));
    IOSObjectArray_Set(ppArray, i, (EduUmassCsGigapaxosPaxospacketsPaxosPacket *) cast_chk(IOSObjectArray_Get(ppChildArray, i), [EduUmassCsGigapaxosPaxospacketsPaxosPacket class]));
  }
  return ppArray;
}

IOSObjectArray *EduUmassCsGigapaxosPaxosutilMessagingTask_toPaxosPacketArrayWithEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_(IOSObjectArray *array1, IOSObjectArray *array2) {
  EduUmassCsGigapaxosPaxosutilMessagingTask_initialize();
  jint size1 = (array1 != nil ? array1->size_ : 0);
  jint size2 = (array2 != nil ? array2->size_ : 0);
  IOSObjectArray *combined = [IOSObjectArray arrayWithLength:size1 + size2 type:EduUmassCsGigapaxosPaxospacketsPaxosPacket_class_()];
  if (array1 != nil) for (jint i = 0; i < array1->size_; i++) IOSObjectArray_Set(combined, i, IOSObjectArray_Get(array1, i));
  if (array2 != nil) for (jint j = size1; j < size1 + size2; j++) IOSObjectArray_Set(combined, j, IOSObjectArray_Get(array2, j - size1));
  return combined;
}

EduUmassCsGigapaxosPaxosutilMessagingTask *EduUmassCsGigapaxosPaxosutilMessagingTask_getLoopbackWithEduUmassCsGigapaxosPaxosutilMessagingTask_withInt_(EduUmassCsGigapaxosPaxosutilMessagingTask *mtask, jint myID) {
  EduUmassCsGigapaxosPaxosutilMessagingTask_initialize();
  if (mtask == nil || mtask->recipients_ == nil || mtask->recipients_->size_ == 0) return nil;
  {
    IOSIntArray *a__ = mtask->recipients_;
    jint const *b__ = a__->buffer_;
    jint const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jint i = *b__++;
      if (i == myID) return create_EduUmassCsGigapaxosPaxosutilMessagingTask_initWithInt_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_(myID, mtask->msgs_);
    }
  }
  return nil;
}

EduUmassCsGigapaxosPaxosutilMessagingTask *EduUmassCsGigapaxosPaxosutilMessagingTask_getNonLoopbackWithEduUmassCsGigapaxosPaxosutilMessagingTask_withInt_(EduUmassCsGigapaxosPaxosutilMessagingTask *mtask, jint myID) {
  EduUmassCsGigapaxosPaxosutilMessagingTask_initialize();
  if (mtask == nil || mtask->recipients_ == nil || mtask->recipients_->size_ == 0) return nil;
  if (EduUmassCsGigapaxosPaxosutilMessagingTask_arrayContainsWithIntArray_withInt_(mtask->recipients_, myID)) {
    if (mtask->recipients_->size_ > 1) return create_EduUmassCsGigapaxosPaxosutilMessagingTask_initWithIntArray_withEduUmassCsGigapaxosPaxospacketsPaxosPacketArray_(EduUmassCsUtilsUtil_filterWithIntArray_withInt_(mtask->recipients_, myID), mtask->msgs_);
    else return nil;
  }
  return mtask;
}

jboolean EduUmassCsGigapaxosPaxosutilMessagingTask_arrayContainsWithIntArray_withInt_(IOSIntArray *array, jint member) {
  EduUmassCsGigapaxosPaxosutilMessagingTask_initialize();
  {
    IOSIntArray *a__ = array;
    jint const *b__ = ((IOSIntArray *) nil_chk(a__))->buffer_;
    jint const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jint a = *b__++;
      if (a == member) return true;
    }
  }
  return false;
}

void EduUmassCsGigapaxosPaxosutilMessagingTask_mainWithNSStringArray_(IOSObjectArray *args) {
  EduUmassCsGigapaxosPaxosutilMessagingTask_initialize();
}

IOSObjectArray *EduUmassCsGigapaxosPaxosutilMessagingTask_combineWithEduUmassCsGigapaxosPaxosutilMessagingTaskArray_withEduUmassCsGigapaxosPaxosutilMessagingTaskArray_(IOSObjectArray *array1, IOSObjectArray *array2) {
  EduUmassCsGigapaxosPaxosutilMessagingTask_initialize();
  jint length1 = (array1 != nil ? array1->size_ : 0);
  jint length2 = (array2 != nil ? array2->size_ : 0);
  IOSObjectArray *mtasks = [IOSObjectArray arrayWithLength:length1 + length2 type:EduUmassCsGigapaxosPaxosutilMessagingTask_class_()];
  for (jint i = 0; i < length1; i++) IOSObjectArray_Set(mtasks, i, IOSObjectArray_Get(nil_chk(array1), i));
  for (jint i = 0; i < length2; i++) IOSObjectArray_Set(mtasks, length1 + i, IOSObjectArray_Get(nil_chk(array2), i));
  return mtasks;
}

IOSObjectArray *EduUmassCsGigapaxosPaxosutilMessagingTask_combineWithEduUmassCsGigapaxosPaxosutilMessagingTask_withEduUmassCsGigapaxosPaxosutilMessagingTaskArray_(EduUmassCsGigapaxosPaxosutilMessagingTask *mtask, IOSObjectArray *array) {
  EduUmassCsGigapaxosPaxosutilMessagingTask_initialize();
  if (mtask == nil && array == nil) return nil;
  else if (mtask != nil) return EduUmassCsGigapaxosPaxosutilMessagingTask_combineWithEduUmassCsGigapaxosPaxosutilMessagingTaskArray_withEduUmassCsGigapaxosPaxosutilMessagingTaskArray_([mtask toArray], array);
  else return array;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsGigapaxosPaxosutilMessagingTask)