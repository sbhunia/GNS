//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/reconfiguration/reconfigurationutils/AppInstrumenter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "edu/umass/cs/gigapaxos/interfaces/ClientRequest.h"
#include "edu/umass/cs/gigapaxos/interfaces/Request.h"
#include "edu/umass/cs/reconfiguration/ReconfigurationConfig.h"
#include "edu/umass/cs/reconfiguration/interfaces/ReplicableRequest.h"
#include "edu/umass/cs/reconfiguration/reconfigurationutils/AppInstrumenter.h"
#include "edu/umass/cs/utils/Config.h"
#include "edu/umass/cs/utils/DelayProfiler.h"
#include "java/io/PrintStream.h"
#include "java/lang/Long.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Timer.h"
#include "java/util/TimerTask.h"

@protocol JavaUtilFunctionBiFunction;
@protocol JavaUtilFunctionFunction;

#pragma clang diagnostic ignored "-Wincomplete-implementation"

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_numRecvdLocal();
inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_numRecvdLocal(jint value);
inline jint *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_numRecvdLocal();
static jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRecvdLocal = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, numRecvdLocal, jint)

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_numRecvdCoordinated();
inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_numRecvdCoordinated(jint value);
inline jint *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_numRecvdCoordinated();
static jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRecvdCoordinated = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, numRecvdCoordinated, jint)

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_numSentRespLocal();
inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_numSentRespLocal(jint value);
inline jint *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_numSentRespLocal();
static jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentRespLocal = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, numSentRespLocal, jint)

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_numSentRespCoordinated();
inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_numSentRespCoordinated(jint value);
inline jint *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_numSentRespCoordinated();
static jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentRespCoordinated = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, numSentRespCoordinated, jint)

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_numActiveReplicaErrors();
inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_numActiveReplicaErrors(jint value);
inline jint *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_numActiveReplicaErrors();
static jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numActiveReplicaErrors = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, numActiveReplicaErrors, jint)

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_numSentLocal();
inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_numSentLocal(jint value);
inline jint *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_numSentLocal();
static jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentLocal = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, numSentLocal, jint)

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_numRcvdRespLocal();
inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_numRcvdRespLocal(jint value);
inline jint *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_numRcvdRespLocal();
static jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdRespLocal = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, numRcvdRespLocal, jint)

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_numSentCoordinated();
inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_numSentCoordinated(jint value);
inline jint *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_numSentCoordinated();
static jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentCoordinated = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, numSentCoordinated, jint)

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_numRcvdRespCoordinated();
inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_numRcvdRespCoordinated(jint value);
inline jint *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_numRcvdRespCoordinated();
static jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdRespCoordinated = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, numRcvdRespCoordinated, jint)

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_numAppPackets();
inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_numAppPackets(jint value);
inline jint *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_numAppPackets();
static jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numAppPackets = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, numAppPackets, jint)

inline JavaUtilTimer *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_timer();
inline JavaUtilTimer *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_timer(JavaUtilTimer *value);
static JavaUtilTimer *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_timer;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, timer, JavaUtilTimer *)

inline jlong EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_lastUpdated();
inline jlong EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_lastUpdated(jlong value);
inline jlong *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_lastUpdated();
static jlong EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_lastUpdated;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, lastUpdated, jlong)

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_numOutstanding();
inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_numOutstanding(jint value);
inline jint *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_numOutstanding();
static jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numOutstanding = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, numOutstanding, jint)

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_numRcvdSSLPackets();
inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_set_numRcvdSSLPackets(jint value);
inline jint *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getRef_numRcvdSSLPackets();
static jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdSSLPackets = 0;
J2OBJC_STATIC_FIELD_PRIMITIVE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, numRcvdSSLPackets, jint)

inline JavaUtilHashMap *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_outstanding();
static JavaUtilHashMap *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_outstanding;
J2OBJC_STATIC_FIELD_OBJ_FINAL(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, outstanding, JavaUtilHashMap *)

inline jlong EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_get_PERIOD();
#define EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_PERIOD 5000LL
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, PERIOD, jlong)

@interface EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1 : JavaUtilHashMap

- (instancetype)init;

- (jboolean)removeEldestEntryWithJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)eldest;

- (id<EduUmassCsGigapaxosInterfacesClientRequest>)computeIfAbsentWithId:(JavaLangLong *)arg0
                                           withJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg1;

- (id<EduUmassCsGigapaxosInterfacesClientRequest>)getWithId:(id)arg0;

- (id<EduUmassCsGigapaxosInterfacesClientRequest>)removeWithId:(id)arg0;

- (id<EduUmassCsGigapaxosInterfacesClientRequest>)putIfAbsentWithId:(JavaLangLong *)arg0
                                                             withId:(id<EduUmassCsGigapaxosInterfacesClientRequest>)arg1;

- (id<EduUmassCsGigapaxosInterfacesClientRequest>)computeIfPresentWithId:(JavaLangLong *)arg0
                                          withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (id<EduUmassCsGigapaxosInterfacesClientRequest>)replaceWithId:(JavaLangLong *)arg0
                                                         withId:(id<EduUmassCsGigapaxosInterfacesClientRequest>)arg1;

- (id<EduUmassCsGigapaxosInterfacesClientRequest>)putWithId:(JavaLangLong *)arg0
                                                     withId:(id<EduUmassCsGigapaxosInterfacesClientRequest>)arg1;

- (id<EduUmassCsGigapaxosInterfacesClientRequest>)computeWithId:(JavaLangLong *)arg0
                                 withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (id<EduUmassCsGigapaxosInterfacesClientRequest>)mergeWithId:(JavaLangLong *)arg0
                                                       withId:(id<EduUmassCsGigapaxosInterfacesClientRequest>)arg1
                               withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg2;

- (id<EduUmassCsGigapaxosInterfacesClientRequest>)getOrDefaultWithId:(id)arg0
                                                              withId:(id<EduUmassCsGigapaxosInterfacesClientRequest>)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1)

inline jint EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1_get_MAX_ENTRIES();
#define EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1_MAX_ENTRIES 100
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1, MAX_ENTRIES, jint)

__attribute__((unused)) static void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1_init(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1 *self);

__attribute__((unused)) static EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1 *new_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1 *create_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1_init();

@interface EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2 : JavaUtilTimerTask

- (instancetype)init;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2)

__attribute__((unused)) static void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2_init(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2 *self);

__attribute__((unused)) static EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2 *new_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2 *create_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2_init();

J2OBJC_INITIALIZED_DEFN(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter)

@implementation EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)rcvdRequestWithEduUmassCsGigapaxosInterfacesRequest:(id<EduUmassCsGigapaxosInterfacesRequest>)request {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_rcvdRequestWithEduUmassCsGigapaxosInterfacesRequest_(request);
}

+ (void)sentResponseLocalWithEduUmassCsGigapaxosInterfacesRequest:(id<EduUmassCsGigapaxosInterfacesRequest>)request {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_sentResponseLocalWithEduUmassCsGigapaxosInterfacesRequest_(request);
}

+ (void)sentResponseCoordinatedWithEduUmassCsGigapaxosInterfacesRequest:(id<EduUmassCsGigapaxosInterfacesRequest>)request {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_sentResponseCoordinatedWithEduUmassCsGigapaxosInterfacesRequest_(request);
}

+ (void)sentActiveReplicaError {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_sentActiveReplicaError();
}

+ (void)recvdAppPacket {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_recvdAppPacket();
}

+ (NSString *)getStats {
  return EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getStats();
}

+ (void)sentRequestWithEduUmassCsGigapaxosInterfacesClientRequest:(id<EduUmassCsGigapaxosInterfacesClientRequest>)request {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_sentRequestWithEduUmassCsGigapaxosInterfacesClientRequest_(request);
}

+ (void)recvdResponseWithEduUmassCsGigapaxosInterfacesClientRequest:(id<EduUmassCsGigapaxosInterfacesClientRequest>)response {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_recvdResponseWithEduUmassCsGigapaxosInterfacesClientRequest_(response);
}

+ (void)outstandingAppRequestWithInt:(jint)numOutstandingAppRequests
withEduUmassCsGigapaxosInterfacesClientRequest:(id<EduUmassCsGigapaxosInterfacesClientRequest>)request {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_outstandingAppRequestWithInt_withEduUmassCsGigapaxosInterfacesClientRequest_(numOutstandingAppRequests, request);
}

+ (void)rcvdSSLPacket {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_rcvdSSLPacket();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x29, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x29, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x29, 3, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x29, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x29, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x29, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x29, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x29, 6, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x29, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x29, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(rcvdRequestWithEduUmassCsGigapaxosInterfacesRequest:);
  methods[2].selector = @selector(sentResponseLocalWithEduUmassCsGigapaxosInterfacesRequest:);
  methods[3].selector = @selector(sentResponseCoordinatedWithEduUmassCsGigapaxosInterfacesRequest:);
  methods[4].selector = @selector(sentActiveReplicaError);
  methods[5].selector = @selector(recvdAppPacket);
  methods[6].selector = @selector(getStats);
  methods[7].selector = @selector(sentRequestWithEduUmassCsGigapaxosInterfacesClientRequest:);
  methods[8].selector = @selector(recvdResponseWithEduUmassCsGigapaxosInterfacesClientRequest:);
  methods[9].selector = @selector(outstandingAppRequestWithInt:withEduUmassCsGigapaxosInterfacesClientRequest:);
  methods[10].selector = @selector(rcvdSSLPacket);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "numRecvdLocal", "I", .constantValue.asLong = 0, 0xa, -1, 9, -1, -1 },
    { "numRecvdCoordinated", "I", .constantValue.asLong = 0, 0xa, -1, 10, -1, -1 },
    { "numSentRespLocal", "I", .constantValue.asLong = 0, 0xa, -1, 11, -1, -1 },
    { "numSentRespCoordinated", "I", .constantValue.asLong = 0, 0xa, -1, 12, -1, -1 },
    { "numActiveReplicaErrors", "I", .constantValue.asLong = 0, 0xa, -1, 13, -1, -1 },
    { "numSentLocal", "I", .constantValue.asLong = 0, 0xa, -1, 14, -1, -1 },
    { "numRcvdRespLocal", "I", .constantValue.asLong = 0, 0xa, -1, 15, -1, -1 },
    { "numSentCoordinated", "I", .constantValue.asLong = 0, 0xa, -1, 16, -1, -1 },
    { "numRcvdRespCoordinated", "I", .constantValue.asLong = 0, 0xa, -1, 17, -1, -1 },
    { "numAppPackets", "I", .constantValue.asLong = 0, 0xa, -1, 18, -1, -1 },
    { "timer", "LJavaUtilTimer;", .constantValue.asLong = 0, 0xa, -1, 19, -1, -1 },
    { "lastUpdated", "J", .constantValue.asLong = 0, 0xa, -1, 20, -1, -1 },
    { "numOutstanding", "I", .constantValue.asLong = 0, 0xa, -1, 21, -1, -1 },
    { "numRcvdSSLPackets", "I", .constantValue.asLong = 0, 0xa, -1, 22, -1, -1 },
    { "outstanding", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x1a, -1, 23, 24, -1 },
    { "PERIOD", "J", .constantValue.asLong = EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_PERIOD, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "rcvdRequest", "LEduUmassCsGigapaxosInterfacesRequest;", "sentResponseLocal", "sentResponseCoordinated", "sentRequest", "LEduUmassCsGigapaxosInterfacesClientRequest;", "recvdResponse", "outstandingAppRequest", "ILEduUmassCsGigapaxosInterfacesClientRequest;", &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRecvdLocal, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRecvdCoordinated, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentRespLocal, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentRespCoordinated, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numActiveReplicaErrors, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentLocal, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdRespLocal, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentCoordinated, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdRespCoordinated, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numAppPackets, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_timer, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_lastUpdated, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numOutstanding, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdSSLPackets, &EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_outstanding, "Ljava/util/HashMap<Ljava/lang/Long;Ledu/umass/cs/gigapaxos/interfaces/ClientRequest;>;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter = { "AppInstrumenter", "edu.umass.cs.reconfiguration.reconfigurationutils", ptrTable, methods, fields, 7, 0x1, 11, 16, -1, -1, -1, -1, -1 };
  return &_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter;
}

+ (void)initialize {
  if (self == [EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter class]) {
    JreStrongAssignAndConsume(&EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_timer, new_JavaUtilTimer_initWithBoolean_(true));
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    JreStrongAssignAndConsume(&EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_outstanding, new_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1_init());
    {
      if (EduUmassCsUtilsConfig_getGlobalBooleanWithJavaLangEnum_(JreLoadEnum(EduUmassCsReconfigurationReconfigurationConfig_RC, ENABLE_INSTRUMENTATION))) [((JavaUtilTimer *) nil_chk(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_timer)) scheduleAtFixedRateWithJavaUtilTimerTask:create_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2_init() withLong:0 withLong:EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_PERIOD];
    }
    J2OBJC_SET_INITIALIZED(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter)
  }
}

@end

void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_init(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter *self) {
  NSObject_init(self);
}

EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter *new_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_init() {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, init)
}

EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter *create_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_init() {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, init)
}

void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_rcvdRequestWithEduUmassCsGigapaxosInterfacesRequest_(id<EduUmassCsGigapaxosInterfacesRequest> request) {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_initialize();
  @synchronized(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_class_()) {
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    if ([EduUmassCsReconfigurationInterfacesReplicableRequest_class_() isInstance:request] && [((id<EduUmassCsReconfigurationInterfacesReplicableRequest>) nil_chk(((id<EduUmassCsReconfigurationInterfacesReplicableRequest>) cast_check(request, EduUmassCsReconfigurationInterfacesReplicableRequest_class_())))) needsCoordination]) EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRecvdCoordinated++;
    else EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRecvdLocal++;
  }
}

void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_sentResponseLocalWithEduUmassCsGigapaxosInterfacesRequest_(id<EduUmassCsGigapaxosInterfacesRequest> request) {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_initialize();
  @synchronized(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_class_()) {
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentRespLocal++;
  }
}

void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_sentResponseCoordinatedWithEduUmassCsGigapaxosInterfacesRequest_(id<EduUmassCsGigapaxosInterfacesRequest> request) {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_initialize();
  @synchronized(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_class_()) {
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentRespCoordinated++;
  }
}

void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_sentActiveReplicaError() {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_initialize();
  @synchronized(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_class_()) {
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numActiveReplicaErrors++;
  }
}

void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_recvdAppPacket() {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_initialize();
  @synchronized(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_class_()) {
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numAppPackets++;
  }
}

NSString *EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getStats() {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_initialize();
  @synchronized(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_class_()) {
    return (JreStrcat("$$$$$$$$$$$$$$$C", [EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_class_() getSimpleName], @":[", (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRecvdLocal != 0 ? JreStrcat("$I", @"numRecvdLocal=", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRecvdLocal) : @""), (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentRespLocal != 0 ? JreStrcat("$I", @", numSentRespLocal=", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentRespLocal) : @""), (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRecvdCoordinated != 0 ? JreStrcat("$I", @", numRecvdCoordinated=", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRecvdCoordinated) : @""), (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentRespCoordinated != 0 ? JreStrcat("$I", @", numSentRespCoordinated=", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentRespCoordinated) : @""), (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numActiveReplicaErrors != 0 ? JreStrcat("$I", @", numActiveReplicaErrors=", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numActiveReplicaErrors) : @""), (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentLocal != 0 ? JreStrcat("$I", @"numSentLocal=", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentLocal) : @""), (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdRespLocal != 0 ? JreStrcat("$I", @", numRecvdRespLocal=", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdRespLocal) : @""), (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentCoordinated != 0 ? JreStrcat("$I", @", numSentCoordinated=", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentCoordinated) : @""), (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdRespCoordinated != 0 ? JreStrcat("$I", @", numRecvdRespCoordinated=", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdRespCoordinated) : @""), (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numActiveReplicaErrors != 0 ? JreStrcat("$I", @", numActiveReplicaErrors=", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numActiveReplicaErrors) : @""), (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numAppPackets != 0 ? JreStrcat("$I", @", numAppPackets=", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numAppPackets) : @""), (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numOutstanding != 0 ? JreStrcat("$I", @", numOutstanding=", [((JavaUtilHashMap *) nil_chk(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_outstanding)) size]) : @""), (EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdSSLPackets != 0 ? JreStrcat("$I", @", numRcvdSSLPackets=", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdSSLPackets) : @""), ']'));
  }
}

void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_sentRequestWithEduUmassCsGigapaxosInterfacesClientRequest_(id<EduUmassCsGigapaxosInterfacesClientRequest> request) {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_initialize();
  @synchronized(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_class_()) {
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    if ([EduUmassCsReconfigurationInterfacesReplicableRequest_class_() isInstance:request] && [((id<EduUmassCsReconfigurationInterfacesReplicableRequest>) nil_chk(((id<EduUmassCsReconfigurationInterfacesReplicableRequest>) cast_check(request, EduUmassCsReconfigurationInterfacesReplicableRequest_class_())))) needsCoordination]) EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentCoordinated++;
    else EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numSentLocal++;
    [((JavaUtilHashMap *) nil_chk(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_outstanding)) putWithId:JavaLangLong_valueOfWithLong_([((id<EduUmassCsGigapaxosInterfacesClientRequest>) nil_chk(request)) getRequestID]) withId:request];
  }
}

void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_recvdResponseWithEduUmassCsGigapaxosInterfacesClientRequest_(id<EduUmassCsGigapaxosInterfacesClientRequest> response) {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_initialize();
  @synchronized(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_class_()) {
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    if ([EduUmassCsReconfigurationInterfacesReplicableRequest_class_() isInstance:response] && [((id<EduUmassCsReconfigurationInterfacesReplicableRequest>) nil_chk(((id<EduUmassCsReconfigurationInterfacesReplicableRequest>) cast_check(response, EduUmassCsReconfigurationInterfacesReplicableRequest_class_())))) needsCoordination]) EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdRespCoordinated++;
    else EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdRespLocal++;
    [((JavaUtilHashMap *) nil_chk(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_outstanding)) removeWithId:JavaLangLong_valueOfWithLong_([((id<EduUmassCsGigapaxosInterfacesClientRequest>) nil_chk(response)) getRequestID])];
  }
}

void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_outstandingAppRequestWithInt_withEduUmassCsGigapaxosInterfacesClientRequest_(jint numOutstandingAppRequests, id<EduUmassCsGigapaxosInterfacesClientRequest> request) {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_initialize();
  @synchronized(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_class_()) {
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numOutstanding = numOutstandingAppRequests;
  }
}

void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_rcvdSSLPacket() {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_initialize();
  @synchronized(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_class_()) {
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_lastUpdated = JavaLangSystem_currentTimeMillis();
    EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_numRcvdSSLPackets++;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter)

@implementation EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)removeEldestEntryWithJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)eldest {
  return [self size] > EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1_MAX_ENTRIES;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(removeEldestEntryWithJavaUtilMap_Entry:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_ENTRIES", "I", .constantValue.asInt = EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1_MAX_ENTRIES, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "removeEldestEntry", "LJavaUtilMap_Entry;", "LEduUmassCsReconfigurationReconfigurationutilsAppInstrumenter;", "Ljava/util/HashMap<Ljava/lang/Long;Ledu/umass/cs/gigapaxos/interfaces/ClientRequest;>;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1 = { "", "edu.umass.cs.reconfiguration.reconfigurationutils", ptrTable, methods, fields, 7, 0x8008, 2, 1, 2, -1, -1, 3, -1 };
  return &_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1;
}

@end

void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1_init(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1 *self) {
  JavaUtilHashMap_init(self);
}

EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1 *new_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1_init() {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1, init)
}

EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1 *create_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1_init() {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_1, init)
}

@implementation EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)run {
  if (JavaLangSystem_currentTimeMillis() - JreLoadStatic(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter, lastUpdated) < EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_PERIOD) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$$", EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_getStats(), @"; ", EduUmassCsUtilsDelayProfiler_getStatsWithJavaUtilSet_(create_JavaUtilHashSet_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ @"wrapWrite" } count:1 type:NSString_class_()]))))];
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
  static const void *ptrTable[] = { "LEduUmassCsReconfigurationReconfigurationutilsAppInstrumenter;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2 = { "", "edu.umass.cs.reconfiguration.reconfigurationutils", ptrTable, methods, NULL, 7, 0x8008, 2, 0, 0, -1, -1, -1, -1 };
  return &_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2;
}

@end

void EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2_init(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2 *self) {
  JavaUtilTimerTask_init(self);
}

EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2 *new_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2_init() {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2, init)
}

EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2 *create_EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2_init() {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationReconfigurationutilsAppInstrumenter_2, init)
}