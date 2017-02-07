//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/nio/nioutils/NIOInstrumenter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "edu/umass/cs/nio/AbstractPacketDemultiplexer.h"
#include "edu/umass/cs/nio/JSONMessenger.h"
#include "edu/umass/cs/nio/NIOTransport.h"
#include "edu/umass/cs/nio/nioutils/NIOInstrumenter.h"
#include "edu/umass/cs/utils/Util.h"
#include "java/io/PrintStream.h"
#include "java/lang/System.h"
#include "java/util/Timer.h"
#include "java/util/TimerTask.h"
#include "java/util/logging/Level.h"
#include "java/util/logging/Logger.h"
#include "org/json/JSONObject.h"

inline JavaUtilLoggingLogger *EduUmassCsNioNioutilsNIOInstrumenter_get_log();
inline JavaUtilLoggingLogger *EduUmassCsNioNioutilsNIOInstrumenter_set_log(JavaUtilLoggingLogger *value);
static JavaUtilLoggingLogger *EduUmassCsNioNioutilsNIOInstrumenter_log;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsNioNioutilsNIOInstrumenter, log, JavaUtilLoggingLogger *)

inline jint EduUmassCsNioNioutilsNIOInstrumenter_get_totalSent();
inline jint EduUmassCsNioNioutilsNIOInstrumenter_set_totalSent(jint value);
inline jint *EduUmassCsNioNioutilsNIOInstrumenter_getRef_totalSent();
static jint EduUmassCsNioNioutilsNIOInstrumenter_totalSent = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, totalSent, jint)

inline jint EduUmassCsNioNioutilsNIOInstrumenter_get_totalRcvd();
inline jint EduUmassCsNioNioutilsNIOInstrumenter_set_totalRcvd(jint value);
inline jint *EduUmassCsNioNioutilsNIOInstrumenter_getRef_totalRcvd();
static jint EduUmassCsNioNioutilsNIOInstrumenter_totalRcvd = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, totalRcvd, jint)

inline jint EduUmassCsNioNioutilsNIOInstrumenter_get_totalBytesSent();
inline jint EduUmassCsNioNioutilsNIOInstrumenter_set_totalBytesSent(jint value);
inline jint *EduUmassCsNioNioutilsNIOInstrumenter_getRef_totalBytesSent();
static jint EduUmassCsNioNioutilsNIOInstrumenter_totalBytesSent = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, totalBytesSent, jint)

inline jint EduUmassCsNioNioutilsNIOInstrumenter_get_totalBytesRcvd();
inline jint EduUmassCsNioNioutilsNIOInstrumenter_set_totalBytesRcvd(jint value);
inline jint *EduUmassCsNioNioutilsNIOInstrumenter_getRef_totalBytesRcvd();
static jint EduUmassCsNioNioutilsNIOInstrumenter_totalBytesRcvd = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, totalBytesRcvd, jint)

inline jint EduUmassCsNioNioutilsNIOInstrumenter_get_totalEncrBytesSent();
inline jint EduUmassCsNioNioutilsNIOInstrumenter_set_totalEncrBytesSent(jint value);
inline jint *EduUmassCsNioNioutilsNIOInstrumenter_getRef_totalEncrBytesSent();
static jint EduUmassCsNioNioutilsNIOInstrumenter_totalEncrBytesSent = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, totalEncrBytesSent, jint)

inline jint EduUmassCsNioNioutilsNIOInstrumenter_get_totalEncrBytesRcvd();
inline jint EduUmassCsNioNioutilsNIOInstrumenter_set_totalEncrBytesRcvd(jint value);
inline jint *EduUmassCsNioNioutilsNIOInstrumenter_getRef_totalEncrBytesRcvd();
static jint EduUmassCsNioNioutilsNIOInstrumenter_totalEncrBytesRcvd = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, totalEncrBytesRcvd, jint)

inline jint EduUmassCsNioNioutilsNIOInstrumenter_get_totalConnAccepted();
inline jint EduUmassCsNioNioutilsNIOInstrumenter_set_totalConnAccepted(jint value);
inline jint *EduUmassCsNioNioutilsNIOInstrumenter_getRef_totalConnAccepted();
static jint EduUmassCsNioNioutilsNIOInstrumenter_totalConnAccepted = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, totalConnAccepted, jint)

inline jint EduUmassCsNioNioutilsNIOInstrumenter_get_totalConnInitiated();
inline jint EduUmassCsNioNioutilsNIOInstrumenter_set_totalConnInitiated(jint value);
inline jint *EduUmassCsNioNioutilsNIOInstrumenter_getRef_totalConnInitiated();
static jint EduUmassCsNioNioutilsNIOInstrumenter_totalConnInitiated = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, totalConnInitiated, jint)

inline jint EduUmassCsNioNioutilsNIOInstrumenter_get_totalJSONRcvd();
inline jint EduUmassCsNioNioutilsNIOInstrumenter_set_totalJSONRcvd(jint value);
inline jint *EduUmassCsNioNioutilsNIOInstrumenter_getRef_totalJSONRcvd();
static jint EduUmassCsNioNioutilsNIOInstrumenter_totalJSONRcvd = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, totalJSONRcvd, jint)

inline jdouble EduUmassCsNioNioutilsNIOInstrumenter_get_averageDelay();
inline jdouble EduUmassCsNioNioutilsNIOInstrumenter_set_averageDelay(jdouble value);
inline jdouble *EduUmassCsNioNioutilsNIOInstrumenter_getRef_averageDelay();
static jdouble EduUmassCsNioNioutilsNIOInstrumenter_averageDelay = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, averageDelay, jdouble)

inline jboolean EduUmassCsNioNioutilsNIOInstrumenter_get_enabled();
inline jboolean EduUmassCsNioNioutilsNIOInstrumenter_set_enabled(jboolean value);
inline jboolean *EduUmassCsNioNioutilsNIOInstrumenter_getRef_enabled();
static jboolean EduUmassCsNioNioutilsNIOInstrumenter_enabled = false;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, enabled, jboolean)

inline jlong EduUmassCsNioNioutilsNIOInstrumenter_get_PERIOD();
inline jlong EduUmassCsNioNioutilsNIOInstrumenter_set_PERIOD(jlong value);
inline jlong *EduUmassCsNioNioutilsNIOInstrumenter_getRef_PERIOD();
static jlong EduUmassCsNioNioutilsNIOInstrumenter_PERIOD = 5000;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, PERIOD, jlong)

inline jlong EduUmassCsNioNioutilsNIOInstrumenter_get_lastUpdated();
inline jlong EduUmassCsNioNioutilsNIOInstrumenter_set_lastUpdated(jlong value);
inline jlong *EduUmassCsNioNioutilsNIOInstrumenter_getRef_lastUpdated();
static jlong EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, lastUpdated, jlong)

inline JavaUtilTimer *EduUmassCsNioNioutilsNIOInstrumenter_get_timer();
inline JavaUtilTimer *EduUmassCsNioNioutilsNIOInstrumenter_set_timer(JavaUtilTimer *value);
static JavaUtilTimer *EduUmassCsNioNioutilsNIOInstrumenter_timer;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsNioNioutilsNIOInstrumenter, timer, JavaUtilTimer *)

inline jlong EduUmassCsNioNioutilsNIOInstrumenter_get_THRESHOLD();
#define EduUmassCsNioNioutilsNIOInstrumenter_THRESHOLD 8000LL
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsNioNioutilsNIOInstrumenter, THRESHOLD, jlong)

inline jboolean EduUmassCsNioNioutilsNIOInstrumenter_get_monitorHandleMessageEnabled_();
inline jboolean EduUmassCsNioNioutilsNIOInstrumenter_set_monitorHandleMessageEnabled_(jboolean value);
inline jboolean *EduUmassCsNioNioutilsNIOInstrumenter_getRef_monitorHandleMessageEnabled_();
static jboolean EduUmassCsNioNioutilsNIOInstrumenter_monitorHandleMessageEnabled_ = false;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsNioNioutilsNIOInstrumenter, monitorHandleMessageEnabled_, jboolean)

@interface EduUmassCsNioNioutilsNIOInstrumenter_1 : JavaUtilTimerTask

- (instancetype)init;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(EduUmassCsNioNioutilsNIOInstrumenter_1)

__attribute__((unused)) static void EduUmassCsNioNioutilsNIOInstrumenter_1_init(EduUmassCsNioNioutilsNIOInstrumenter_1 *self);

__attribute__((unused)) static EduUmassCsNioNioutilsNIOInstrumenter_1 *new_EduUmassCsNioNioutilsNIOInstrumenter_1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static EduUmassCsNioNioutilsNIOInstrumenter_1 *create_EduUmassCsNioNioutilsNIOInstrumenter_1_init();

@interface EduUmassCsNioNioutilsNIOInstrumenter_2 : JavaUtilTimerTask

- (instancetype)init;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(EduUmassCsNioNioutilsNIOInstrumenter_2)

__attribute__((unused)) static void EduUmassCsNioNioutilsNIOInstrumenter_2_init(EduUmassCsNioNioutilsNIOInstrumenter_2 *self);

__attribute__((unused)) static EduUmassCsNioNioutilsNIOInstrumenter_2 *new_EduUmassCsNioNioutilsNIOInstrumenter_2_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static EduUmassCsNioNioutilsNIOInstrumenter_2 *create_EduUmassCsNioNioutilsNIOInstrumenter_2_init();

J2OBJC_INITIALIZED_DEFN(EduUmassCsNioNioutilsNIOInstrumenter)

@implementation EduUmassCsNioNioutilsNIOInstrumenter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  EduUmassCsNioNioutilsNIOInstrumenter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)setLoggerWithJavaUtilLoggingLogger:(JavaUtilLoggingLogger *)l {
  EduUmassCsNioNioutilsNIOInstrumenter_setLoggerWithJavaUtilLoggingLogger_(l);
}

+ (void)incrSent {
  EduUmassCsNioNioutilsNIOInstrumenter_incrSent();
}

+ (void)incrRcvd {
  EduUmassCsNioNioutilsNIOInstrumenter_incrRcvd();
}

+ (jint)incrBytesSentWithInt:(jint)sent {
  return EduUmassCsNioNioutilsNIOInstrumenter_incrBytesSentWithInt_(sent);
}

+ (jint)incrEncrBytesSentWithInt:(jint)sent {
  return EduUmassCsNioNioutilsNIOInstrumenter_incrEncrBytesSentWithInt_(sent);
}

+ (jint)incrBytesRcvdWithInt:(jint)rcvd {
  return EduUmassCsNioNioutilsNIOInstrumenter_incrBytesRcvdWithInt_(rcvd);
}

+ (jint)incrEncrBytesRcvdWithInt:(jint)rcvd {
  return EduUmassCsNioNioutilsNIOInstrumenter_incrEncrBytesRcvdWithInt_(rcvd);
}

+ (void)incrAccepted {
  EduUmassCsNioNioutilsNIOInstrumenter_incrAccepted();
}

+ (void)incrInitiated {
  EduUmassCsNioNioutilsNIOInstrumenter_incrInitiated();
}

+ (void)incrJSONRcvd {
  EduUmassCsNioNioutilsNIOInstrumenter_incrJSONRcvd();
}

+ (void)rcvdJSONPacketWithOrgJsonJSONObject:(OrgJsonJSONObject *)msg {
  EduUmassCsNioNioutilsNIOInstrumenter_rcvdJSONPacketWithOrgJsonJSONObject_(msg);
}

+ (jint)getMissing {
  return EduUmassCsNioNioutilsNIOInstrumenter_getMissing();
}

- (void)disable {
  EduUmassCsNioNioutilsNIOInstrumenter_enabled = (EduUmassCsNioNioutilsNIOInstrumenter_enabled ? false : false);
}

- (void)enable {
  EduUmassCsNioNioutilsNIOInstrumenter_enabled = true;
}

+ (jboolean)monitorHandleMessageEnabled {
  return EduUmassCsNioNioutilsNIOInstrumenter_monitorHandleMessageEnabled();
}

+ (void)monitorHandleMessage {
  EduUmassCsNioNioutilsNIOInstrumenter_monitorHandleMessage();
}

+ (NSString *)getJSONStats {
  return EduUmassCsNioNioutilsNIOInstrumenter_getJSONStats();
}

- (NSString *)description {
  NSString *s = @"";
  return JreStrcat("$$I$I$$I$I$I$", s, @"NIO stats: [totalSent = ", EduUmassCsNioNioutilsNIOInstrumenter_totalSent, @", totalRcvd = ", EduUmassCsNioNioutilsNIOInstrumenter_totalRcvd, (EduUmassCsNioNioutilsNIOInstrumenter_totalSent != EduUmassCsNioNioutilsNIOInstrumenter_totalRcvd ? JreStrcat("$I", @", missing-or-batched = ", (EduUmassCsNioNioutilsNIOInstrumenter_totalSent - EduUmassCsNioNioutilsNIOInstrumenter_totalRcvd)) : @""), @"]\n\t [totalConnInitiated = ", EduUmassCsNioNioutilsNIOInstrumenter_totalConnInitiated, @", totalConnAccepted = ", EduUmassCsNioNioutilsNIOInstrumenter_totalConnAccepted, @"]\nJSONMessageWorker: [totalJSONRcvd = ", EduUmassCsNioNioutilsNIOInstrumenter_totalJSONRcvd, @"]]");
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 4, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 5, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 6, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 7, 8, 9, -1, -1, -1 },
    { NULL, "I", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setLoggerWithJavaUtilLoggingLogger:);
  methods[2].selector = @selector(incrSent);
  methods[3].selector = @selector(incrRcvd);
  methods[4].selector = @selector(incrBytesSentWithInt:);
  methods[5].selector = @selector(incrEncrBytesSentWithInt:);
  methods[6].selector = @selector(incrBytesRcvdWithInt:);
  methods[7].selector = @selector(incrEncrBytesRcvdWithInt:);
  methods[8].selector = @selector(incrAccepted);
  methods[9].selector = @selector(incrInitiated);
  methods[10].selector = @selector(incrJSONRcvd);
  methods[11].selector = @selector(rcvdJSONPacketWithOrgJsonJSONObject:);
  methods[12].selector = @selector(getMissing);
  methods[13].selector = @selector(disable);
  methods[14].selector = @selector(enable);
  methods[15].selector = @selector(monitorHandleMessageEnabled);
  methods[16].selector = @selector(monitorHandleMessage);
  methods[17].selector = @selector(getJSONStats);
  methods[18].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "log", "LJavaUtilLoggingLogger;", .constantValue.asLong = 0, 0xa, -1, 11, -1, -1 },
    { "totalSent", "I", .constantValue.asLong = 0, 0xa, -1, 12, -1, -1 },
    { "totalRcvd", "I", .constantValue.asLong = 0, 0xa, -1, 13, -1, -1 },
    { "totalBytesSent", "I", .constantValue.asLong = 0, 0xa, -1, 14, -1, -1 },
    { "totalBytesRcvd", "I", .constantValue.asLong = 0, 0xa, -1, 15, -1, -1 },
    { "totalEncrBytesSent", "I", .constantValue.asLong = 0, 0xa, -1, 16, -1, -1 },
    { "totalEncrBytesRcvd", "I", .constantValue.asLong = 0, 0xa, -1, 17, -1, -1 },
    { "totalConnAccepted", "I", .constantValue.asLong = 0, 0xa, -1, 18, -1, -1 },
    { "totalConnInitiated", "I", .constantValue.asLong = 0, 0xa, -1, 19, -1, -1 },
    { "totalJSONRcvd", "I", .constantValue.asLong = 0, 0xa, -1, 20, -1, -1 },
    { "averageDelay", "D", .constantValue.asLong = 0, 0xa, -1, 21, -1, -1 },
    { "enabled", "Z", .constantValue.asLong = 0, 0xa, -1, 22, -1, -1 },
    { "PERIOD", "J", .constantValue.asLong = 0, 0xa, -1, 23, -1, -1 },
    { "lastUpdated", "J", .constantValue.asLong = 0, 0xa, -1, 24, -1, -1 },
    { "timer", "LJavaUtilTimer;", .constantValue.asLong = 0, 0xa, -1, 25, -1, -1 },
    { "THRESHOLD", "J", .constantValue.asLong = EduUmassCsNioNioutilsNIOInstrumenter_THRESHOLD, 0x1a, -1, -1, -1, -1 },
    { "monitorHandleMessageEnabled_", "Z", .constantValue.asLong = 0, 0xa, 26, 27, -1, -1 },
  };
  static const void *ptrTable[] = { "setLogger", "LJavaUtilLoggingLogger;", "incrBytesSent", "I", "incrEncrBytesSent", "incrBytesRcvd", "incrEncrBytesRcvd", "rcvdJSONPacket", "LOrgJsonJSONObject;", "LOrgJsonJSONException;", "toString", &EduUmassCsNioNioutilsNIOInstrumenter_log, &EduUmassCsNioNioutilsNIOInstrumenter_totalSent, &EduUmassCsNioNioutilsNIOInstrumenter_totalRcvd, &EduUmassCsNioNioutilsNIOInstrumenter_totalBytesSent, &EduUmassCsNioNioutilsNIOInstrumenter_totalBytesRcvd, &EduUmassCsNioNioutilsNIOInstrumenter_totalEncrBytesSent, &EduUmassCsNioNioutilsNIOInstrumenter_totalEncrBytesRcvd, &EduUmassCsNioNioutilsNIOInstrumenter_totalConnAccepted, &EduUmassCsNioNioutilsNIOInstrumenter_totalConnInitiated, &EduUmassCsNioNioutilsNIOInstrumenter_totalJSONRcvd, &EduUmassCsNioNioutilsNIOInstrumenter_averageDelay, &EduUmassCsNioNioutilsNIOInstrumenter_enabled, &EduUmassCsNioNioutilsNIOInstrumenter_PERIOD, &EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated, &EduUmassCsNioNioutilsNIOInstrumenter_timer, "monitorHandleMessageEnabled", &EduUmassCsNioNioutilsNIOInstrumenter_monitorHandleMessageEnabled_ };
  static const J2ObjcClassInfo _EduUmassCsNioNioutilsNIOInstrumenter = { "NIOInstrumenter", "edu.umass.cs.nio.nioutils", ptrTable, methods, fields, 7, 0x1, 19, 17, -1, -1, -1, -1, -1 };
  return &_EduUmassCsNioNioutilsNIOInstrumenter;
}

+ (void)initialize {
  if (self == [EduUmassCsNioNioutilsNIOInstrumenter class]) {
    JreStrongAssign(&EduUmassCsNioNioutilsNIOInstrumenter_log, EduUmassCsNioNIOTransport_getLogger());
    EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    JreStrongAssignAndConsume(&EduUmassCsNioNioutilsNIOInstrumenter_timer, new_JavaUtilTimer_initWithBoolean_(true));
    {
      if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) [EduUmassCsNioNioutilsNIOInstrumenter_timer scheduleAtFixedRateWithJavaUtilTimerTask:create_EduUmassCsNioNioutilsNIOInstrumenter_1_init() withLong:0 withLong:EduUmassCsNioNioutilsNIOInstrumenter_PERIOD];
    }
    J2OBJC_SET_INITIALIZED(EduUmassCsNioNioutilsNIOInstrumenter)
  }
}

@end

void EduUmassCsNioNioutilsNIOInstrumenter_init(EduUmassCsNioNioutilsNIOInstrumenter *self) {
  NSObject_init(self);
}

EduUmassCsNioNioutilsNIOInstrumenter *new_EduUmassCsNioNioutilsNIOInstrumenter_init() {
  J2OBJC_NEW_IMPL(EduUmassCsNioNioutilsNIOInstrumenter, init)
}

EduUmassCsNioNioutilsNIOInstrumenter *create_EduUmassCsNioNioutilsNIOInstrumenter_init() {
  J2OBJC_CREATE_IMPL(EduUmassCsNioNioutilsNIOInstrumenter, init)
}

void EduUmassCsNioNioutilsNIOInstrumenter_setLoggerWithJavaUtilLoggingLogger_(JavaUtilLoggingLogger *l) {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  JreStrongAssign(&EduUmassCsNioNioutilsNIOInstrumenter_log, l);
}

void EduUmassCsNioNioutilsNIOInstrumenter_incrSent() {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) @synchronized(EduUmassCsNioNioutilsNIOInstrumenter_class_()) {
    EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsNioNioutilsNIOInstrumenter_totalSent++;
  }
}

void EduUmassCsNioNioutilsNIOInstrumenter_incrRcvd() {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) @synchronized(EduUmassCsNioNioutilsNIOInstrumenter_class_()) {
    EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsNioNioutilsNIOInstrumenter_totalRcvd++;
  }
}

jint EduUmassCsNioNioutilsNIOInstrumenter_incrBytesSentWithInt_(jint sent) {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) @synchronized(EduUmassCsNioNioutilsNIOInstrumenter_class_()) {
    EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsNioNioutilsNIOInstrumenter_totalBytesSent += sent;
  }
  return EduUmassCsNioNioutilsNIOInstrumenter_totalBytesSent;
}

jint EduUmassCsNioNioutilsNIOInstrumenter_incrEncrBytesSentWithInt_(jint sent) {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) @synchronized(EduUmassCsNioNioutilsNIOInstrumenter_class_()) {
    EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsNioNioutilsNIOInstrumenter_totalEncrBytesSent += sent;
  }
  return EduUmassCsNioNioutilsNIOInstrumenter_totalEncrBytesSent;
}

jint EduUmassCsNioNioutilsNIOInstrumenter_incrBytesRcvdWithInt_(jint rcvd) {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) @synchronized(EduUmassCsNioNioutilsNIOInstrumenter_class_()) {
    EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsNioNioutilsNIOInstrumenter_totalBytesRcvd += rcvd;
  }
  return EduUmassCsNioNioutilsNIOInstrumenter_totalBytesRcvd;
}

jint EduUmassCsNioNioutilsNIOInstrumenter_incrEncrBytesRcvdWithInt_(jint rcvd) {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) @synchronized(EduUmassCsNioNioutilsNIOInstrumenter_class_()) {
    EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsNioNioutilsNIOInstrumenter_totalEncrBytesRcvd += rcvd;
  }
  return EduUmassCsNioNioutilsNIOInstrumenter_totalEncrBytesRcvd;
}

void EduUmassCsNioNioutilsNIOInstrumenter_incrAccepted() {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) @synchronized(EduUmassCsNioNioutilsNIOInstrumenter_class_()) {
    EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsNioNioutilsNIOInstrumenter_totalConnAccepted++;
  }
}

void EduUmassCsNioNioutilsNIOInstrumenter_incrInitiated() {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) @synchronized(EduUmassCsNioNioutilsNIOInstrumenter_class_()) {
    EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsNioNioutilsNIOInstrumenter_totalConnInitiated++;
  }
}

void EduUmassCsNioNioutilsNIOInstrumenter_incrJSONRcvd() {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) @synchronized(EduUmassCsNioNioutilsNIOInstrumenter_class_()) {
    EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsNioNioutilsNIOInstrumenter_totalJSONRcvd++;
  }
}

void EduUmassCsNioNioutilsNIOInstrumenter_rcvdJSONPacketWithOrgJsonJSONObject_(OrgJsonJSONObject *msg) {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) @synchronized(EduUmassCsNioNioutilsNIOInstrumenter_class_()) {
    if ([((OrgJsonJSONObject *) nil_chk(msg)) hasWithNSString:EduUmassCsNioJSONMessenger_SENT_TIME]) {
      EduUmassCsNioNioutilsNIOInstrumenter_averageDelay = EduUmassCsUtilsUtil_movingAverageWithLong_withDouble_(JavaLangSystem_currentTimeMillis() - [msg getLongWithNSString:EduUmassCsNioJSONMessenger_SENT_TIME], EduUmassCsNioNioutilsNIOInstrumenter_averageDelay);
      EduUmassCsNioNioutilsNIOInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    }
  }
}

jint EduUmassCsNioNioutilsNIOInstrumenter_getMissing() {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) @synchronized(EduUmassCsNioNioutilsNIOInstrumenter_class_()) {
    return EduUmassCsNioNioutilsNIOInstrumenter_totalSent - EduUmassCsNioNioutilsNIOInstrumenter_totalJSONRcvd;
  }
  return 0;
}

jboolean EduUmassCsNioNioutilsNIOInstrumenter_monitorHandleMessageEnabled() {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  return EduUmassCsNioNioutilsNIOInstrumenter_monitorHandleMessageEnabled_;
}

void EduUmassCsNioNioutilsNIOInstrumenter_monitorHandleMessage() {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  {
    [((JavaUtilLoggingLogger *) nil_chk(EduUmassCsNioNioutilsNIOInstrumenter_log)) logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, INFO) withNSString:JreStrcat("$J$J", @"Initializing handleMessageMonitor with threshold ", EduUmassCsNioNioutilsNIOInstrumenter_THRESHOLD, @" period ", EduUmassCsNioNioutilsNIOInstrumenter_PERIOD)];
    EduUmassCsNioNioutilsNIOInstrumenter_monitorHandleMessageEnabled_ = true;
    [((JavaUtilTimer *) nil_chk(EduUmassCsNioNioutilsNIOInstrumenter_timer)) scheduleAtFixedRateWithJavaUtilTimerTask:create_EduUmassCsNioNioutilsNIOInstrumenter_2_init() withLong:0 withLong:EduUmassCsNioNioutilsNIOInstrumenter_PERIOD];
  }
}

NSString *EduUmassCsNioNioutilsNIOInstrumenter_getJSONStats() {
  EduUmassCsNioNioutilsNIOInstrumenter_initialize();
  if (EduUmassCsNioNioutilsNIOInstrumenter_enabled) @synchronized(EduUmassCsNioNioutilsNIOInstrumenter_class_()) {
    return JreStrcat("$I$I$I$I$I$I$", @"[NIO stats: [ #sent=", EduUmassCsNioNioutilsNIOInstrumenter_totalSent, @" | #rcvd=", EduUmassCsNioNioutilsNIOInstrumenter_totalRcvd, @" | bytesSent=", EduUmassCsNioNioutilsNIOInstrumenter_totalBytesSent, @" | bytesRcvd=", EduUmassCsNioNioutilsNIOInstrumenter_totalBytesRcvd, @" | totalEncrBytesSent=", EduUmassCsNioNioutilsNIOInstrumenter_totalEncrBytesSent, @" | totalEncrBytesRcvd=", EduUmassCsNioNioutilsNIOInstrumenter_totalEncrBytesRcvd, @"]]");
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsNioNioutilsNIOInstrumenter)

@implementation EduUmassCsNioNioutilsNIOInstrumenter_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  EduUmassCsNioNioutilsNIOInstrumenter_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)run {
  if (JavaLangSystem_currentTimeMillis() - JreLoadStatic(EduUmassCsNioNioutilsNIOInstrumenter, lastUpdated) < JreLoadStatic(EduUmassCsNioNioutilsNIOInstrumenter, PERIOD)) {
    NSString *stats = EduUmassCsNioNioutilsNIOInstrumenter_getJSONStats();
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:stats];
    if (JreLoadStatic(EduUmassCsNioNioutilsNIOInstrumenter, log) != nil) [JreLoadStatic(EduUmassCsNioNioutilsNIOInstrumenter, log) logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, WARNING) withNSString:@"{0}" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ stats } count:1 type:NSObject_class_()]];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LEduUmassCsNioNioutilsNIOInstrumenter;" };
  static const J2ObjcClassInfo _EduUmassCsNioNioutilsNIOInstrumenter_1 = { "", "edu.umass.cs.nio.nioutils", ptrTable, methods, NULL, 7, 0x8008, 2, 0, 0, -1, -1, -1, -1 };
  return &_EduUmassCsNioNioutilsNIOInstrumenter_1;
}

@end

void EduUmassCsNioNioutilsNIOInstrumenter_1_init(EduUmassCsNioNioutilsNIOInstrumenter_1 *self) {
  JavaUtilTimerTask_init(self);
}

EduUmassCsNioNioutilsNIOInstrumenter_1 *new_EduUmassCsNioNioutilsNIOInstrumenter_1_init() {
  J2OBJC_NEW_IMPL(EduUmassCsNioNioutilsNIOInstrumenter_1, init)
}

EduUmassCsNioNioutilsNIOInstrumenter_1 *create_EduUmassCsNioNioutilsNIOInstrumenter_1_init() {
  J2OBJC_CREATE_IMPL(EduUmassCsNioNioutilsNIOInstrumenter_1, init)
}

@implementation EduUmassCsNioNioutilsNIOInstrumenter_2

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  EduUmassCsNioNioutilsNIOInstrumenter_2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)run {
  NSString *stats = EduUmassCsNioAbstractPacketDemultiplexer_getHandleMessageReportWithLong_(EduUmassCsNioNioutilsNIOInstrumenter_THRESHOLD);
  if (stats != nil) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:stats];
    if (JreLoadStatic(EduUmassCsNioNioutilsNIOInstrumenter, log) != nil) [JreLoadStatic(EduUmassCsNioNioutilsNIOInstrumenter, log) logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, WARNING) withNSString:@"{0}" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ stats } count:1 type:NSObject_class_()]];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LEduUmassCsNioNioutilsNIOInstrumenter;", "monitorHandleMessage" };
  static const J2ObjcClassInfo _EduUmassCsNioNioutilsNIOInstrumenter_2 = { "", "edu.umass.cs.nio.nioutils", ptrTable, methods, NULL, 7, 0x8008, 2, 0, 0, -1, 1, -1, -1 };
  return &_EduUmassCsNioNioutilsNIOInstrumenter_2;
}

@end

void EduUmassCsNioNioutilsNIOInstrumenter_2_init(EduUmassCsNioNioutilsNIOInstrumenter_2 *self) {
  JavaUtilTimerTask_init(self);
}

EduUmassCsNioNioutilsNIOInstrumenter_2 *new_EduUmassCsNioNioutilsNIOInstrumenter_2_init() {
  J2OBJC_NEW_IMPL(EduUmassCsNioNioutilsNIOInstrumenter_2, init)
}

EduUmassCsNioNioutilsNIOInstrumenter_2 *create_EduUmassCsNioNioutilsNIOInstrumenter_2_init() {
  J2OBJC_CREATE_IMPL(EduUmassCsNioNioutilsNIOInstrumenter_2, init)
}