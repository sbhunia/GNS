//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/utils/DelayProfiler.java
//

#include "J2ObjC_source.h"
#include "edu/umass/cs/utils/DelayProfiler.h"
#include "edu/umass/cs/utils/Util.h"
#include "java/lang/Double.h"
#include "java/lang/System.h"
#include "java/util/Set.h"
#include "java/util/TreeMap.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "java/util/concurrent/ConcurrentMap.h"

@interface EduUmassCsUtilsDelayProfiler ()

+ (NSString *)statsHelperWithJavaUtilConcurrentConcurrentMap:(id<JavaUtilConcurrentConcurrentMap>)map
                                                withNSString:(NSString *)units
                                             withJavaUtilSet:(id<JavaUtilSet>)fields;

@end

inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_get_averageMillis();
inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_set_averageMillis(JavaUtilConcurrentConcurrentHashMap *value);
static JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_averageMillis;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsUtilsDelayProfiler, averageMillis, JavaUtilConcurrentConcurrentHashMap *)

inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_get_averageNanos();
inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_set_averageNanos(JavaUtilConcurrentConcurrentHashMap *value);
static JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_averageNanos;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsUtilsDelayProfiler, averageNanos, JavaUtilConcurrentConcurrentHashMap *)

inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_get_averages();
inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_set_averages(JavaUtilConcurrentConcurrentHashMap *value);
static JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_averages;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsUtilsDelayProfiler, averages, JavaUtilConcurrentConcurrentHashMap *)

inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_get_stdDevs();
inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_set_stdDevs(JavaUtilConcurrentConcurrentHashMap *value);
static JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_stdDevs;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsUtilsDelayProfiler, stdDevs, JavaUtilConcurrentConcurrentHashMap *)

inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_get_counters();
inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_set_counters(JavaUtilConcurrentConcurrentHashMap *value);
static JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_counters;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsUtilsDelayProfiler, counters, JavaUtilConcurrentConcurrentHashMap *)

inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_get_instarates();
inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_set_instarates(JavaUtilConcurrentConcurrentHashMap *value);
static JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_instarates;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsUtilsDelayProfiler, instarates, JavaUtilConcurrentConcurrentHashMap *)

inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_get_lastArrivalNanos();
inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_set_lastArrivalNanos(JavaUtilConcurrentConcurrentHashMap *value);
static JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_lastArrivalNanos;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsUtilsDelayProfiler, lastArrivalNanos, JavaUtilConcurrentConcurrentHashMap *)

inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_get_lastRecordedNanos();
inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_set_lastRecordedNanos(JavaUtilConcurrentConcurrentHashMap *value);
static JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_lastRecordedNanos;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsUtilsDelayProfiler, lastRecordedNanos, JavaUtilConcurrentConcurrentHashMap *)

inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_get_lastCount();
inline JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_set_lastCount(JavaUtilConcurrentConcurrentHashMap *value);
static JavaUtilConcurrentConcurrentHashMap *EduUmassCsUtilsDelayProfiler_lastCount;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsUtilsDelayProfiler, lastCount, JavaUtilConcurrentConcurrentHashMap *)

inline jboolean EduUmassCsUtilsDelayProfiler_get_enabled();
inline jboolean EduUmassCsUtilsDelayProfiler_set_enabled(jboolean value);
inline jboolean *EduUmassCsUtilsDelayProfiler_getRef_enabled();
static jboolean EduUmassCsUtilsDelayProfiler_enabled = true;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsUtilsDelayProfiler, enabled, jboolean)

__attribute__((unused)) static NSString *EduUmassCsUtilsDelayProfiler_statsHelperWithJavaUtilConcurrentConcurrentMap_withNSString_withJavaUtilSet_(id<JavaUtilConcurrentConcurrentMap> map, NSString *units, id<JavaUtilSet> fields);

J2OBJC_INITIALIZED_DEFN(EduUmassCsUtilsDelayProfiler)

@implementation EduUmassCsUtilsDelayProfiler

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  EduUmassCsUtilsDelayProfiler_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)disable {
  EduUmassCsUtilsDelayProfiler_disable();
}

+ (jboolean)register__WithNSString:(NSString *)field
withJavaUtilConcurrentConcurrentMap:(id<JavaUtilConcurrentConcurrentMap>)map {
  return EduUmassCsUtilsDelayProfiler_register__WithNSString_withJavaUtilConcurrentConcurrentMap_(field, map);
}

+ (void)updateDelayWithNSString:(NSString *)field
                     withDouble:(jdouble)time
                     withDouble:(jdouble)alpha {
  EduUmassCsUtilsDelayProfiler_updateDelayWithNSString_withDouble_withDouble_(field, time, alpha);
}

+ (void)updateDelayWithNSString:(NSString *)field
                     withDouble:(jdouble)time {
  EduUmassCsUtilsDelayProfiler_updateDelayWithNSString_withDouble_(field, time);
}

+ (void)updateDelayNanoWithNSString:(NSString *)field
                         withDouble:(jdouble)time {
  EduUmassCsUtilsDelayProfiler_updateDelayNanoWithNSString_withDouble_(field, time);
}

+ (void)updateDelayNanoWithNSString:(NSString *)field
                           withLong:(jlong)time
                            withInt:(jint)n {
  EduUmassCsUtilsDelayProfiler_updateDelayNanoWithNSString_withLong_withInt_(field, time, n);
}

+ (void)updateDelayWithNSString:(NSString *)field
                       withLong:(jlong)time
                        withInt:(jint)n {
  EduUmassCsUtilsDelayProfiler_updateDelayWithNSString_withLong_withInt_(field, time, n);
}

+ (jdouble)getWithNSString:(NSString *)field {
  return EduUmassCsUtilsDelayProfiler_getWithNSString_(field);
}

+ (void)updateMovAvgWithNSString:(NSString *)field
                      withDouble:(jdouble)sample {
  EduUmassCsUtilsDelayProfiler_updateMovAvgWithNSString_withDouble_(field, sample);
}

+ (void)updateMovAvgWithNSString:(NSString *)field
                      withDouble:(jdouble)sample
                      withDouble:(jdouble)alpha {
  EduUmassCsUtilsDelayProfiler_updateMovAvgWithNSString_withDouble_withDouble_(field, sample, alpha);
}

+ (void)updateCountWithNSString:(NSString *)field
                        withInt:(jint)incr {
  EduUmassCsUtilsDelayProfiler_updateCountWithNSString_withInt_(field, incr);
}

+ (void)updateValueWithNSString:(NSString *)field
                     withDouble:(jdouble)value {
  EduUmassCsUtilsDelayProfiler_updateValueWithNSString_withDouble_(field, value);
}

+ (void)updateInterArrivalTimeWithNSString:(NSString *)field
                                   withInt:(jint)numArrivals
                                   withInt:(jint)samplingFactor {
  EduUmassCsUtilsDelayProfiler_updateInterArrivalTimeWithNSString_withInt_withInt_(field, numArrivals, samplingFactor);
}

+ (void)updateInterArrivalTimeWithNSString:(NSString *)field
                                   withInt:(jint)numArrivals
                                   withInt:(jint)samplingFactor
                                withDouble:(jdouble)alpha {
  EduUmassCsUtilsDelayProfiler_updateInterArrivalTimeWithNSString_withInt_withInt_withDouble_(field, numArrivals, samplingFactor, alpha);
}

+ (void)updateInterArrivalTimeWithNSString:(NSString *)field
                                   withInt:(jint)numArrivals {
  EduUmassCsUtilsDelayProfiler_updateInterArrivalTimeWithNSString_withInt_(field, numArrivals);
}

+ (void)updateRateWithNSString:(NSString *)field
                       withInt:(jint)numArrivals
                       withInt:(jint)samplingFactor {
  EduUmassCsUtilsDelayProfiler_updateRateWithNSString_withInt_withInt_(field, numArrivals, samplingFactor);
}

+ (void)updateRateWithNSString:(NSString *)field
                       withInt:(jint)numArrivals {
  EduUmassCsUtilsDelayProfiler_updateRateWithNSString_withInt_(field, numArrivals);
}

+ (jdouble)getThroughputWithNSString:(NSString *)field {
  return EduUmassCsUtilsDelayProfiler_getThroughputWithNSString_(field);
}

+ (jdouble)getRateWithNSString:(NSString *)field {
  return EduUmassCsUtilsDelayProfiler_getRateWithNSString_(field);
}

+ (NSString *)getStats {
  return EduUmassCsUtilsDelayProfiler_getStats();
}

+ (NSString *)getStatsWithJavaUtilSet:(id<JavaUtilSet>)fields {
  return EduUmassCsUtilsDelayProfiler_getStatsWithJavaUtilSet_(fields);
}

+ (NSString *)statsHelperWithJavaUtilConcurrentConcurrentMap:(id<JavaUtilConcurrentConcurrentMap>)map
                                                withNSString:(NSString *)units
                                             withJavaUtilSet:(id<JavaUtilSet>)fields {
  return EduUmassCsUtilsDelayProfiler_statsHelperWithJavaUtilConcurrentConcurrentMap_withNSString_withJavaUtilSet_(map, units, fields);
}

+ (void)clear {
  EduUmassCsUtilsDelayProfiler_clear();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "V", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 3, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 6, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 3, 7, -1, -1, -1, -1 },
    { NULL, "D", 0x9, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 10, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 10, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 13, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 14, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 14, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 14, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 17, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 17, 12, -1, -1, -1, -1 },
    { NULL, "D", 0x9, 18, 9, -1, -1, -1, -1 },
    { NULL, "D", 0x9, 19, 9, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 20, 21, -1, 22, -1, -1 },
    { NULL, "LNSString;", 0xa, 23, 24, -1, 25, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(disable);
  methods[2].selector = @selector(register__WithNSString:withJavaUtilConcurrentConcurrentMap:);
  methods[3].selector = @selector(updateDelayWithNSString:withDouble:withDouble:);
  methods[4].selector = @selector(updateDelayWithNSString:withDouble:);
  methods[5].selector = @selector(updateDelayNanoWithNSString:withDouble:);
  methods[6].selector = @selector(updateDelayNanoWithNSString:withLong:withInt:);
  methods[7].selector = @selector(updateDelayWithNSString:withLong:withInt:);
  methods[8].selector = @selector(getWithNSString:);
  methods[9].selector = @selector(updateMovAvgWithNSString:withDouble:);
  methods[10].selector = @selector(updateMovAvgWithNSString:withDouble:withDouble:);
  methods[11].selector = @selector(updateCountWithNSString:withInt:);
  methods[12].selector = @selector(updateValueWithNSString:withDouble:);
  methods[13].selector = @selector(updateInterArrivalTimeWithNSString:withInt:withInt:);
  methods[14].selector = @selector(updateInterArrivalTimeWithNSString:withInt:withInt:withDouble:);
  methods[15].selector = @selector(updateInterArrivalTimeWithNSString:withInt:);
  methods[16].selector = @selector(updateRateWithNSString:withInt:withInt:);
  methods[17].selector = @selector(updateRateWithNSString:withInt:);
  methods[18].selector = @selector(getThroughputWithNSString:);
  methods[19].selector = @selector(getRateWithNSString:);
  methods[20].selector = @selector(getStats);
  methods[21].selector = @selector(getStatsWithJavaUtilSet:);
  methods[22].selector = @selector(statsHelperWithJavaUtilConcurrentConcurrentMap:withNSString:withJavaUtilSet:);
  methods[23].selector = @selector(clear);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "averageMillis", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0xa, -1, 26, 27, -1 },
    { "averageNanos", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0xa, -1, 28, 27, -1 },
    { "averages", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0xa, -1, 29, 27, -1 },
    { "stdDevs", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0xa, -1, 30, 27, -1 },
    { "counters", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0xa, -1, 31, 27, -1 },
    { "instarates", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0xa, -1, 32, 27, -1 },
    { "lastArrivalNanos", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0xa, -1, 33, 27, -1 },
    { "lastRecordedNanos", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0xa, -1, 34, 27, -1 },
    { "lastCount", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0xa, -1, 35, 27, -1 },
    { "enabled", "Z", .constantValue.asLong = 0, 0xa, -1, 36, -1, -1 },
  };
  static const void *ptrTable[] = { "register", "LNSString;LJavaUtilConcurrentConcurrentMap;", "(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Double;>;)Z", "updateDelay", "LNSString;DD", "LNSString;D", "updateDelayNano", "LNSString;JI", "get", "LNSString;", "updateMovAvg", "updateCount", "LNSString;I", "updateValue", "updateInterArrivalTime", "LNSString;II", "LNSString;IID", "updateRate", "getThroughput", "getRate", "getStats", "LJavaUtilSet;", "(Ljava/util/Set<Ljava/lang/String;>;)Ljava/lang/String;", "statsHelper", "LJavaUtilConcurrentConcurrentMap;LNSString;LJavaUtilSet;", "(Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Double;>;Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;)Ljava/lang/String;", &EduUmassCsUtilsDelayProfiler_averageMillis, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Double;>;", &EduUmassCsUtilsDelayProfiler_averageNanos, &EduUmassCsUtilsDelayProfiler_averages, &EduUmassCsUtilsDelayProfiler_stdDevs, &EduUmassCsUtilsDelayProfiler_counters, &EduUmassCsUtilsDelayProfiler_instarates, &EduUmassCsUtilsDelayProfiler_lastArrivalNanos, &EduUmassCsUtilsDelayProfiler_lastRecordedNanos, &EduUmassCsUtilsDelayProfiler_lastCount, &EduUmassCsUtilsDelayProfiler_enabled };
  static const J2ObjcClassInfo _EduUmassCsUtilsDelayProfiler = { "DelayProfiler", "edu.umass.cs.utils", ptrTable, methods, fields, 7, 0x1, 24, 10, -1, -1, -1, -1, -1 };
  return &_EduUmassCsUtilsDelayProfiler;
}

+ (void)initialize {
  if (self == [EduUmassCsUtilsDelayProfiler class]) {
    JreStrongAssignAndConsume(&EduUmassCsUtilsDelayProfiler_averageMillis, new_JavaUtilConcurrentConcurrentHashMap_init());
    JreStrongAssignAndConsume(&EduUmassCsUtilsDelayProfiler_averageNanos, new_JavaUtilConcurrentConcurrentHashMap_init());
    JreStrongAssignAndConsume(&EduUmassCsUtilsDelayProfiler_averages, new_JavaUtilConcurrentConcurrentHashMap_init());
    JreStrongAssignAndConsume(&EduUmassCsUtilsDelayProfiler_stdDevs, new_JavaUtilConcurrentConcurrentHashMap_init());
    JreStrongAssignAndConsume(&EduUmassCsUtilsDelayProfiler_counters, new_JavaUtilConcurrentConcurrentHashMap_init());
    JreStrongAssignAndConsume(&EduUmassCsUtilsDelayProfiler_instarates, new_JavaUtilConcurrentConcurrentHashMap_init());
    JreStrongAssignAndConsume(&EduUmassCsUtilsDelayProfiler_lastArrivalNanos, new_JavaUtilConcurrentConcurrentHashMap_init());
    JreStrongAssignAndConsume(&EduUmassCsUtilsDelayProfiler_lastRecordedNanos, new_JavaUtilConcurrentConcurrentHashMap_init());
    JreStrongAssignAndConsume(&EduUmassCsUtilsDelayProfiler_lastCount, new_JavaUtilConcurrentConcurrentHashMap_init());
    J2OBJC_SET_INITIALIZED(EduUmassCsUtilsDelayProfiler)
  }
}

@end

void EduUmassCsUtilsDelayProfiler_init(EduUmassCsUtilsDelayProfiler *self) {
  NSObject_init(self);
}

EduUmassCsUtilsDelayProfiler *new_EduUmassCsUtilsDelayProfiler_init() {
  J2OBJC_NEW_IMPL(EduUmassCsUtilsDelayProfiler, init)
}

EduUmassCsUtilsDelayProfiler *create_EduUmassCsUtilsDelayProfiler_init() {
  J2OBJC_CREATE_IMPL(EduUmassCsUtilsDelayProfiler, init)
}

void EduUmassCsUtilsDelayProfiler_disable() {
  EduUmassCsUtilsDelayProfiler_initialize();
  EduUmassCsUtilsDelayProfiler_enabled = false;
}

jboolean EduUmassCsUtilsDelayProfiler_register__WithNSString_withJavaUtilConcurrentConcurrentMap_(NSString *field, id<JavaUtilConcurrentConcurrentMap> map) {
  EduUmassCsUtilsDelayProfiler_initialize();
  if (!EduUmassCsUtilsDelayProfiler_enabled) return false;
  @synchronized(map) {
    if ([((id<JavaUtilConcurrentConcurrentMap>) nil_chk(map)) containsKeyWithId:field]) return true;
    if (map == EduUmassCsUtilsDelayProfiler_lastRecordedNanos) [map putWithId:field withId:JavaLangDouble_valueOfWithDouble_((jdouble) JavaLangSystem_nanoTime())];
    else ;
  }
  @synchronized(EduUmassCsUtilsDelayProfiler_stdDevs) {
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_stdDevs)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_(0.0)];
  }
  return false;
}

void EduUmassCsUtilsDelayProfiler_updateDelayWithNSString_withDouble_withDouble_(NSString *field, jdouble time, jdouble alpha) {
  EduUmassCsUtilsDelayProfiler_initialize();
  if (!EduUmassCsUtilsDelayProfiler_enabled) return;
  jdouble delay;
  jlong endTime = JavaLangSystem_currentTimeMillis();
  @synchronized(EduUmassCsUtilsDelayProfiler_averageMillis) {
    EduUmassCsUtilsDelayProfiler_register__WithNSString_withJavaUtilConcurrentConcurrentMap_(field, EduUmassCsUtilsDelayProfiler_averageMillis);
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averageMillis)) putIfAbsentWithId:field withId:JavaLangDouble_valueOfWithDouble_(endTime - time)];
    delay = [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averageMillis)) getWithId:field])) doubleValue];
    delay = EduUmassCsUtilsUtil_movingAverageWithDouble_withDouble_withDouble_(endTime - time, delay, alpha);
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averageMillis)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_(delay)];
  }
  @synchronized(EduUmassCsUtilsDelayProfiler_stdDevs) {
    jdouble dev = [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_stdDevs)) getWithId:field])) doubleValue];
    dev = EduUmassCsUtilsUtil_movingAverageWithDouble_withDouble_withDouble_(endTime - time - delay, dev, alpha);
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_stdDevs)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_(dev)];
  }
}

void EduUmassCsUtilsDelayProfiler_updateDelayWithNSString_withDouble_(NSString *field, jdouble time) {
  EduUmassCsUtilsDelayProfiler_initialize();
  EduUmassCsUtilsDelayProfiler_updateDelayWithNSString_withDouble_withDouble_(field, time, EduUmassCsUtilsUtil_ALPHA);
}

void EduUmassCsUtilsDelayProfiler_updateDelayNanoWithNSString_withDouble_(NSString *field, jdouble time) {
  EduUmassCsUtilsDelayProfiler_initialize();
  if (!EduUmassCsUtilsDelayProfiler_enabled) return;
  jdouble delay;
  jlong endTime = JavaLangSystem_nanoTime();
  @synchronized(EduUmassCsUtilsDelayProfiler_averageNanos) {
    EduUmassCsUtilsDelayProfiler_register__WithNSString_withJavaUtilConcurrentConcurrentMap_(field, EduUmassCsUtilsDelayProfiler_averageNanos);
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averageNanos)) putIfAbsentWithId:field withId:JavaLangDouble_valueOfWithDouble_(endTime - time)];
    delay = [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averageNanos)) getWithId:field])) doubleValue];
    delay = EduUmassCsUtilsUtil_movingAverageWithDouble_withDouble_(endTime - time, delay);
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averageNanos)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_(delay)];
  }
  @synchronized(EduUmassCsUtilsDelayProfiler_stdDevs) {
    JavaLangDouble *dev = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_stdDevs)) getWithId:field];
    dev = JavaLangDouble_valueOfWithDouble_((dev != nil ? EduUmassCsUtilsUtil_movingAverageWithDouble_withDouble_(endTime - time - delay, [dev doubleValue]) : 0.0));
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_stdDevs)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_(dev != nil ? [dev doubleValue] : 0.0)];
  }
}

void EduUmassCsUtilsDelayProfiler_updateDelayNanoWithNSString_withLong_withInt_(NSString *field, jlong time, jint n) {
  EduUmassCsUtilsDelayProfiler_initialize();
  if (!EduUmassCsUtilsDelayProfiler_enabled) return;
  for (jint i = 0; i < n; i++) EduUmassCsUtilsDelayProfiler_updateDelayNanoWithNSString_withDouble_(field, JavaLangSystem_nanoTime() - (JavaLangSystem_nanoTime() - time) * 1.0 / n);
}

void EduUmassCsUtilsDelayProfiler_updateDelayWithNSString_withLong_withInt_(NSString *field, jlong time, jint n) {
  EduUmassCsUtilsDelayProfiler_initialize();
  if (!EduUmassCsUtilsDelayProfiler_enabled) return;
  for (jint i = 0; i < n; i++) EduUmassCsUtilsDelayProfiler_updateDelayWithNSString_withDouble_(field, JavaLangSystem_currentTimeMillis() - (JavaLangSystem_currentTimeMillis() - time) * 1.0 / n);
}

jdouble EduUmassCsUtilsDelayProfiler_getWithNSString_(NSString *field) {
  EduUmassCsUtilsDelayProfiler_initialize();
  @synchronized(EduUmassCsUtilsDelayProfiler_averageMillis) {
    return [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averageMillis)) containsKeyWithId:field] ? [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averageMillis)) getWithId:field])) doubleValue] : [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averageNanos)) containsKeyWithId:field] ? [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averageNanos)) getWithId:field])) doubleValue] : [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averages)) containsKeyWithId:field] ? [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averages)) getWithId:field])) doubleValue] : [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_counters)) containsKeyWithId:field] ? [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_counters)) getWithId:field])) doubleValue] : [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_instarates)) containsKeyWithId:field] ? [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_instarates)) getWithId:field])) doubleValue] : 0.0;
  }
}

void EduUmassCsUtilsDelayProfiler_updateMovAvgWithNSString_withDouble_(NSString *field, jdouble sample) {
  EduUmassCsUtilsDelayProfiler_initialize();
  EduUmassCsUtilsDelayProfiler_updateMovAvgWithNSString_withDouble_withDouble_(field, sample, EduUmassCsUtilsUtil_ALPHA);
}

void EduUmassCsUtilsDelayProfiler_updateMovAvgWithNSString_withDouble_withDouble_(NSString *field, jdouble sample, jdouble alpha) {
  EduUmassCsUtilsDelayProfiler_initialize();
  if (!EduUmassCsUtilsDelayProfiler_enabled) return;
  jdouble value;
  @synchronized(EduUmassCsUtilsDelayProfiler_averages) {
    EduUmassCsUtilsDelayProfiler_register__WithNSString_withJavaUtilConcurrentConcurrentMap_(field, EduUmassCsUtilsDelayProfiler_averages);
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averages)) putIfAbsentWithId:field withId:JavaLangDouble_valueOfWithDouble_(sample)];
    value = [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averages)) getWithId:field])) doubleValue];
    value = EduUmassCsUtilsUtil_movingAverageWithDouble_withDouble_(sample, value);
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averages)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_(value)];
  }
  @synchronized(EduUmassCsUtilsDelayProfiler_stdDevs) {
    jdouble dev = [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_stdDevs)) getWithId:field])) doubleValue];
    dev = EduUmassCsUtilsUtil_movingAverageWithDouble_withDouble_(sample - value, dev);
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_stdDevs)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_(dev)];
  }
}

void EduUmassCsUtilsDelayProfiler_updateCountWithNSString_withInt_(NSString *field, jint incr) {
  EduUmassCsUtilsDelayProfiler_initialize();
  if (!EduUmassCsUtilsDelayProfiler_enabled) return;
  @synchronized(EduUmassCsUtilsDelayProfiler_counters) {
    EduUmassCsUtilsDelayProfiler_register__WithNSString_withJavaUtilConcurrentConcurrentMap_(field, EduUmassCsUtilsDelayProfiler_counters);
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_counters)) putIfAbsentWithId:field withId:JavaLangDouble_valueOfWithDouble_(0.0)];
    jdouble value = [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_counters)) getWithId:field])) doubleValue];
    JrePlusAssignDoubleD(&value, incr);
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_counters)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_(value)];
  }
}

void EduUmassCsUtilsDelayProfiler_updateValueWithNSString_withDouble_(NSString *field, jdouble value) {
  EduUmassCsUtilsDelayProfiler_initialize();
  if (!EduUmassCsUtilsDelayProfiler_enabled) return;
  @synchronized(EduUmassCsUtilsDelayProfiler_counters) {
    EduUmassCsUtilsDelayProfiler_register__WithNSString_withJavaUtilConcurrentConcurrentMap_(field, EduUmassCsUtilsDelayProfiler_counters);
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_counters)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_(value)];
  }
}

void EduUmassCsUtilsDelayProfiler_updateInterArrivalTimeWithNSString_withInt_withInt_(NSString *field, jint numArrivals, jint samplingFactor) {
  EduUmassCsUtilsDelayProfiler_initialize();
  EduUmassCsUtilsDelayProfiler_updateInterArrivalTimeWithNSString_withInt_withInt_withDouble_(field, numArrivals, samplingFactor, EduUmassCsUtilsUtil_ALPHA);
}

void EduUmassCsUtilsDelayProfiler_updateInterArrivalTimeWithNSString_withInt_withInt_withDouble_(NSString *field, jint numArrivals, jint samplingFactor, jdouble alpha) {
  EduUmassCsUtilsDelayProfiler_initialize();
  if (!EduUmassCsUtilsDelayProfiler_enabled) return;
  if (!EduUmassCsUtilsUtil_oneInWithInt_(samplingFactor)) return;
  @synchronized(EduUmassCsUtilsDelayProfiler_lastArrivalNanos) {
    EduUmassCsUtilsDelayProfiler_register__WithNSString_withJavaUtilConcurrentConcurrentMap_(field, EduUmassCsUtilsDelayProfiler_lastArrivalNanos);
    jlong curTime = JavaLangSystem_nanoTime();
    jdouble value = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_lastArrivalNanos)) containsKeyWithId:field] ? [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_lastArrivalNanos)) getWithId:field])) doubleValue] : curTime;
    if (value == 0) value = curTime;
    EduUmassCsUtilsDelayProfiler_updateMovAvgWithNSString_withDouble_(field, (curTime - JreFpToLong(value)) / (numArrivals * samplingFactor));
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_lastArrivalNanos)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_(JavaLangSystem_nanoTime() * 1.0)];
  }
}

void EduUmassCsUtilsDelayProfiler_updateInterArrivalTimeWithNSString_withInt_(NSString *field, jint numArrivals) {
  EduUmassCsUtilsDelayProfiler_initialize();
  EduUmassCsUtilsDelayProfiler_updateInterArrivalTimeWithNSString_withInt_withInt_(field, numArrivals, 1);
}

void EduUmassCsUtilsDelayProfiler_updateRateWithNSString_withInt_withInt_(NSString *field, jint numArrivals, jint samplingFactor) {
  EduUmassCsUtilsDelayProfiler_initialize();
  if (!EduUmassCsUtilsDelayProfiler_enabled) return;
  if (!EduUmassCsUtilsUtil_oneInWithInt_(samplingFactor)) return;
  EduUmassCsUtilsDelayProfiler_register__WithNSString_withJavaUtilConcurrentConcurrentMap_(field, EduUmassCsUtilsDelayProfiler_lastCount);
  EduUmassCsUtilsDelayProfiler_register__WithNSString_withJavaUtilConcurrentConcurrentMap_(field, EduUmassCsUtilsDelayProfiler_lastRecordedNanos);
  EduUmassCsUtilsDelayProfiler_register__WithNSString_withJavaUtilConcurrentConcurrentMap_(field, EduUmassCsUtilsDelayProfiler_instarates);
  @synchronized(EduUmassCsUtilsDelayProfiler_lastCount) {
    jdouble count = [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_lastCount)) getWithId:field])) doubleValue] + samplingFactor;
    if (count == numArrivals) {
      [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_instarates)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_(numArrivals * 1000 * 1000 * 1000.0 / (JavaLangSystem_nanoTime() - [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_lastRecordedNanos)) getWithId:field])) doubleValue]))];
      [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_lastCount)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_((jdouble) 0)];
      [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_lastRecordedNanos)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_((jdouble) JavaLangSystem_nanoTime())];
    }
    else [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_lastCount)) putWithId:field withId:JavaLangDouble_valueOfWithDouble_(count)];
  }
}

void EduUmassCsUtilsDelayProfiler_updateRateWithNSString_withInt_(NSString *field, jint numArrivals) {
  EduUmassCsUtilsDelayProfiler_initialize();
  EduUmassCsUtilsDelayProfiler_updateRateWithNSString_withInt_withInt_(field, numArrivals, 1);
}

jdouble EduUmassCsUtilsDelayProfiler_getThroughputWithNSString_(NSString *field) {
  EduUmassCsUtilsDelayProfiler_initialize();
  return [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averages)) containsKeyWithId:field] && [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averages)) getWithId:field])) doubleValue] > 0 ? 1000 * 1000 * 1000.0 / [((JavaLangDouble *) nil_chk(([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averages)) getWithId:field]))) doubleValue] : 0;
}

jdouble EduUmassCsUtilsDelayProfiler_getRateWithNSString_(NSString *field) {
  EduUmassCsUtilsDelayProfiler_initialize();
  return [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_instarates)) containsKeyWithId:field] ? [((JavaLangDouble *) nil_chk(([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_instarates)) getWithId:field]))) doubleValue] : 0;
}

NSString *EduUmassCsUtilsDelayProfiler_getStats() {
  EduUmassCsUtilsDelayProfiler_initialize();
  return EduUmassCsUtilsDelayProfiler_getStatsWithJavaUtilSet_(nil);
}

NSString *EduUmassCsUtilsDelayProfiler_getStatsWithJavaUtilSet_(id<JavaUtilSet> fields) {
  EduUmassCsUtilsDelayProfiler_initialize();
  NSString *s = @"[ ";
  JreStrAppend(&s, "$", EduUmassCsUtilsDelayProfiler_statsHelperWithJavaUtilConcurrentConcurrentMap_withNSString_withJavaUtilSet_(EduUmassCsUtilsDelayProfiler_averageMillis, @"ms", fields));
  JreStrAppend(&s, "$", EduUmassCsUtilsDelayProfiler_statsHelperWithJavaUtilConcurrentConcurrentMap_withNSString_withJavaUtilSet_(EduUmassCsUtilsDelayProfiler_averageNanos, @"ns", fields));
  JreStrAppend(&s, "$", EduUmassCsUtilsDelayProfiler_statsHelperWithJavaUtilConcurrentConcurrentMap_withNSString_withJavaUtilSet_(EduUmassCsUtilsDelayProfiler_averages, @"", fields));
  JreStrAppend(&s, "$", EduUmassCsUtilsDelayProfiler_statsHelperWithJavaUtilConcurrentConcurrentMap_withNSString_withJavaUtilSet_(EduUmassCsUtilsDelayProfiler_counters, @"", fields));
  JreStrAppend(&s, "$", EduUmassCsUtilsDelayProfiler_statsHelperWithJavaUtilConcurrentConcurrentMap_withNSString_withJavaUtilSet_(EduUmassCsUtilsDelayProfiler_instarates, @"/s", fields));
  return [(JreStrcat("$C", s, ']')) java_replace:@" | ]" withSequence:@" ]"];
}

NSString *EduUmassCsUtilsDelayProfiler_statsHelperWithJavaUtilConcurrentConcurrentMap_withNSString_withJavaUtilSet_(id<JavaUtilConcurrentConcurrentMap> map, NSString *units, id<JavaUtilSet> fields) {
  EduUmassCsUtilsDelayProfiler_initialize();
  NSString *s = @"";
  JavaUtilTreeMap *treeMap = create_JavaUtilTreeMap_initWithJavaUtilMap_(map);
  @synchronized(treeMap) {
    for (NSString * __strong field in nil_chk([treeMap keySet])) {
      if (fields != nil && ![fields containsWithId:field]) continue;
      jboolean rateParam = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_lastArrivalNanos)) containsKeyWithId:field];
      JreStrAppend(&s, "$", (JreStrcat("$C$C$$$$", field, ':', (!rateParam ? EduUmassCsUtilsUtil_dfWithDouble_([((NSString *) nil_chk(units)) isEqual:@"ns"] ? [((JavaLangDouble *) nil_chk([treeMap getWithId:field])) doubleValue] / 1000.0 : [((JavaLangDouble *) nil_chk([treeMap getWithId:field])) doubleValue]) : EduUmassCsUtilsUtil_dfWithDouble_(EduUmassCsUtilsDelayProfiler_getThroughputWithNSString_(field))), '/', ([((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_stdDevs)) getWithId:field])) doubleValue] >= 0 ? @"+" : @""), (!rateParam ? EduUmassCsUtilsUtil_dfWithDouble_([((NSString *) nil_chk(units)) isEqual:@"ns"] ? [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_stdDevs)) getWithId:field])) doubleValue] / 1000.0 : [((JavaLangDouble *) nil_chk([treeMap getWithId:field])) doubleValue]) : EduUmassCsUtilsUtil_dfWithDouble_(1000 * 1000 * 1000.0 / [((JavaLangDouble *) nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_stdDevs)) getWithId:field])) doubleValue])), (!rateParam ? [((NSString *) nil_chk(units)) isEqual:@"ns"] ? @"us" : units : @"/s"), @" | ")));
    }
  }
  return s;
}

void EduUmassCsUtilsDelayProfiler_clear() {
  EduUmassCsUtilsDelayProfiler_initialize();
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averageMillis)) clear];
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averageNanos)) clear];
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_averages)) clear];
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_stdDevs)) clear];
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_counters)) clear];
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_instarates)) clear];
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_lastArrivalNanos)) clear];
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_lastRecordedNanos)) clear];
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(EduUmassCsUtilsDelayProfiler_lastCount)) clear];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsUtilsDelayProfiler)