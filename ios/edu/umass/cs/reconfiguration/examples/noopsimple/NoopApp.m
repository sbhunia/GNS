//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/reconfiguration/examples/noopsimple/NoopApp.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "edu/umass/cs/gigapaxos/interfaces/ClientRequest.h"
#include "edu/umass/cs/gigapaxos/interfaces/Request.h"
#include "edu/umass/cs/nio/interfaces/AddressMessenger.h"
#include "edu/umass/cs/nio/interfaces/IntegerPacketType.h"
#include "edu/umass/cs/nio/interfaces/SSLMessenger.h"
#include "edu/umass/cs/nio/nioutils/NIOHeader.h"
#include "edu/umass/cs/reconfiguration/ReconfigurationConfig.h"
#include "edu/umass/cs/reconfiguration/examples/AbstractReconfigurablePaxosApp.h"
#include "edu/umass/cs/reconfiguration/examples/AppRequest.h"
#include "edu/umass/cs/reconfiguration/examples/noopsimple/NoopApp.h"
#include "edu/umass/cs/reconfiguration/reconfigurationutils/RequestParseException.h"
#include "java/io/IOException.h"
#include "java/io/PrintStream.h"
#include "java/io/UnsupportedEncodingException.h"
#include "java/lang/Exception.h"
#include "java/lang/System.h"
#include "java/net/InetSocketAddress.h"
#include "java/util/Arrays.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "java/util/logging/Logger.h"
#include "org/json/JSONException.h"
#include "org/json/JSONObject.h"

@interface EduUmassCsReconfigurationExamplesNoopsimpleNoopApp () {
 @public
  jint numReconfigurationsSinceRecovery_;
  jboolean verbose_;
  NSString *myID_;
  JavaUtilHashMap *appData_;
  id<EduUmassCsNioInterfacesSSLMessenger> messenger_;
}

- (jboolean)processRequestWithEduUmassCsReconfigurationExamplesAppRequest:(EduUmassCsReconfigurationExamplesAppRequest *)request
                                                              withBoolean:(jboolean)doNotReplyToClient;

- (void)sendResponseWithEduUmassCsReconfigurationExamplesAppRequest:(EduUmassCsReconfigurationExamplesAppRequest *)request
                                                        withBoolean:(jboolean)doNotReplyToClient;

- (void)sendResponseWithEduUmassCsReconfigurationExamplesAppRequest:(EduUmassCsReconfigurationExamplesAppRequest *)request;

- (jboolean)processStopRequestWithEduUmassCsReconfigurationExamplesAppRequest:(EduUmassCsReconfigurationExamplesAppRequest *)request;

+ (id<EduUmassCsGigapaxosInterfacesRequest>)getNoopRequest;

@end

J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp, myID_, NSString *)
J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp, appData_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp, messenger_, id<EduUmassCsNioInterfacesSSLMessenger>)

inline NSString *EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_get_DEFAULT_INIT_STATE();
static NSString *EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_DEFAULT_INIT_STATE = @"";
J2OBJC_STATIC_FIELD_OBJ_FINAL(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp, DEFAULT_INIT_STATE, NSString *)

inline jboolean EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_get_DELEGATE_RESPONSE_MESSAGING();
#define EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_DELEGATE_RESPONSE_MESSAGING true
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp, DELEGATE_RESPONSE_MESSAGING, jboolean)

inline IOSObjectArray *EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_get_types();
inline IOSObjectArray *EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_set_types(IOSObjectArray *value);
static IOSObjectArray *EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_types;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp, types, IOSObjectArray *)

__attribute__((unused)) static jboolean EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_processRequestWithEduUmassCsReconfigurationExamplesAppRequest_withBoolean_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *self, EduUmassCsReconfigurationExamplesAppRequest *request, jboolean doNotReplyToClient);

__attribute__((unused)) static void EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_sendResponseWithEduUmassCsReconfigurationExamplesAppRequest_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *self, EduUmassCsReconfigurationExamplesAppRequest *request);

__attribute__((unused)) static jboolean EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_processStopRequestWithEduUmassCsReconfigurationExamplesAppRequest_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *self, EduUmassCsReconfigurationExamplesAppRequest *request);

__attribute__((unused)) static id<EduUmassCsGigapaxosInterfacesRequest> EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_getNoopRequest();

@interface EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData : NSObject {
 @public
  NSString *name_;
  NSString *state_;
}

- (instancetype)initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp:(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *)outer$
                                                              withNSString:(NSString *)name
                                                              withNSString:(NSString *)state;

- (void)setStateWithNSString:(NSString *)state;

- (NSString *)getState;

@end

J2OBJC_EMPTY_STATIC_INIT(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData)

J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData, name_, NSString *)
J2OBJC_FIELD_SETTER(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData, state_, NSString *)

__attribute__((unused)) static void EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData_initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp_withNSString_withNSString_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData *self, EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *outer$, NSString *name, NSString *state);

__attribute__((unused)) static EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData *new_EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData_initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp_withNSString_withNSString_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *outer$, NSString *name, NSString *state) NS_RETURNS_RETAINED;

__attribute__((unused)) static EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData *create_EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData_initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp_withNSString_withNSString_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *outer$, NSString *name, NSString *state);

J2OBJC_TYPE_LITERAL_HEADER(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData)

J2OBJC_INITIALIZED_DEFN(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp)

@implementation EduUmassCsReconfigurationExamplesNoopsimpleNoopApp

- (instancetype)initWithNSStringArray:(IOSObjectArray *)args {
  EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_initWithNSStringArray_(self, args);
  return self;
}

- (void)setClientMessengerWithEduUmassCsNioInterfacesSSLMessenger:(id<EduUmassCsNioInterfacesSSLMessenger>)msgr {
  JreStrongAssign(&self->messenger_, msgr);
  JreStrongAssign(&self->myID_, [nil_chk([((id<EduUmassCsNioInterfacesSSLMessenger>) nil_chk(msgr)) getMyID]) description]);
}

- (jboolean)executeWithEduUmassCsGigapaxosInterfacesRequest:(id<EduUmassCsGigapaxosInterfacesRequest>)request
                                                withBoolean:(jboolean)doNotReplyToClient {
  if ([((NSString *) nil_chk([((id<EduUmassCsGigapaxosInterfacesRequest>) nil_chk(request)) description])) isEqual:EduUmassCsGigapaxosInterfacesRequest_NO_OP]) return true;
  switch ([(EduUmassCsReconfigurationExamplesAppRequest_PacketType *) cast_chk(([request getRequestType]), [EduUmassCsReconfigurationExamplesAppRequest_PacketType class]) ordinal]) {
    case EduUmassCsReconfigurationExamplesAppRequest_PacketType_Enum_DEFAULT_APP_REQUEST:
    case EduUmassCsReconfigurationExamplesAppRequest_PacketType_Enum_APP_REQUEST3:
    return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_processRequestWithEduUmassCsReconfigurationExamplesAppRequest_withBoolean_(self, (EduUmassCsReconfigurationExamplesAppRequest *) cast_chk(request, [EduUmassCsReconfigurationExamplesAppRequest class]), doNotReplyToClient);
    default:
    break;
  }
  return false;
}

- (jboolean)processRequestWithEduUmassCsReconfigurationExamplesAppRequest:(EduUmassCsReconfigurationExamplesAppRequest *)request
                                                              withBoolean:(jboolean)doNotReplyToClient {
  return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_processRequestWithEduUmassCsReconfigurationExamplesAppRequest_withBoolean_(self, request, doNotReplyToClient);
}

- (void)sendResponseWithEduUmassCsReconfigurationExamplesAppRequest:(EduUmassCsReconfigurationExamplesAppRequest *)request
                                                        withBoolean:(jboolean)doNotReplyToClient {
  JreAssert(((self->messenger_ != nil && [self->messenger_ getClientMessenger] != nil)), (@"edu/umass/cs/reconfiguration/examples/noopsimple/NoopApp.java:115 condition failed: assert (this.messenger != null && this.messenger.getClientMessenger() != null);"));
  if (self->messenger_ == nil || doNotReplyToClient) return;
  JavaNetInetSocketAddress *sockAddr = [((EduUmassCsReconfigurationExamplesAppRequest *) nil_chk(request)) getSenderAddress];
  @try {
    [((id<EduUmassCsNioInterfacesAddressMessenger>) nil_chk([((id<EduUmassCsNioInterfacesSSLMessenger>) nil_chk(self->messenger_)) getClientMessenger])) sendToAddressWithJavaNetInetSocketAddress:sockAddr withId:[request toJSONObject]];
  }
  @catch (OrgJsonJSONException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
  @catch (JavaIoIOException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
}

- (void)sendResponseWithEduUmassCsReconfigurationExamplesAppRequest:(EduUmassCsReconfigurationExamplesAppRequest *)request {
  EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_sendResponseWithEduUmassCsReconfigurationExamplesAppRequest_(self, request);
}

- (jboolean)processStopRequestWithEduUmassCsReconfigurationExamplesAppRequest:(EduUmassCsReconfigurationExamplesAppRequest *)request {
  return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_processStopRequestWithEduUmassCsReconfigurationExamplesAppRequest_(self, request);
}

- (id<EduUmassCsGigapaxosInterfacesRequest>)getRequestWithNSString:(NSString *)stringified {
  @try {
    return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_staticGetRequestWithNSString_(stringified);
  }
  @catch (OrgJsonJSONException *je) {
    [((JavaUtilLoggingLogger *) nil_chk(EduUmassCsReconfigurationReconfigurationConfig_getLogger())) fineWithNSString:JreStrcat("$$$$", @"App-", myID_, @" unable to parse request ", stringified)];
    @throw create_EduUmassCsReconfigurationReconfigurationutilsRequestParseException_initWithJavaLangException_(je);
  }
}

+ (id<EduUmassCsGigapaxosInterfacesRequest>)staticGetRequestWithNSString:(NSString *)stringified {
  return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_staticGetRequestWithNSString_(stringified);
}

- (id<EduUmassCsGigapaxosInterfacesRequest>)getRequestWithByteArray:(IOSByteArray *)bytes
                                 withEduUmassCsNioNioutilsNIOHeader:(EduUmassCsNioNioutilsNIOHeader *)header {
  return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_staticGetRequestWithByteArray_withEduUmassCsNioNioutilsNIOHeader_(bytes, header);
}

+ (id<EduUmassCsGigapaxosInterfacesRequest>)staticGetRequestWithByteArray:(IOSByteArray *)bytes
                                       withEduUmassCsNioNioutilsNIOHeader:(EduUmassCsNioNioutilsNIOHeader *)header {
  return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_staticGetRequestWithByteArray_withEduUmassCsNioNioutilsNIOHeader_(bytes, header);
}

+ (id<EduUmassCsGigapaxosInterfacesRequest>)getNoopRequest {
  return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_getNoopRequest();
}

- (id<JavaUtilSet>)getRequestTypes {
  return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_staticGetRequestTypes();
}

+ (id<JavaUtilSet>)staticGetRequestTypes {
  return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_staticGetRequestTypes();
}

- (jboolean)executeWithEduUmassCsGigapaxosInterfacesRequest:(id<EduUmassCsGigapaxosInterfacesRequest>)request {
  return [self executeWithEduUmassCsGigapaxosInterfacesRequest:request withBoolean:false];
}

- (NSString *)checkpointWithNSString:(NSString *)name {
  EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData *data = [((JavaUtilHashMap *) nil_chk(self->appData_)) getWithId:name];
  return data != nil ? [data getState] : nil;
}

- (jboolean)restoreWithNSString:(NSString *)name
                   withNSString:(NSString *)state {
  EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData *data = [((JavaUtilHashMap *) nil_chk(self->appData_)) getWithId:name];
  if (data == nil && state != nil) {
    data = create_EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData_initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp_withNSString_withNSString_(self, name, state);
    if (verbose_) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$$$$$", @">>>App-", myID_, @" creating ", name, @" with state ", state)];
    numReconfigurationsSinceRecovery_++;
  }
  else if (state == nil) {
    if (data != nil) if (verbose_) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$$$$$", @"App-", myID_, @" deleting ", name, @" with final state ", data->state_)];
    [self->appData_ removeWithId:name];
    JreAssert(([self->appData_ getWithId:name] == nil), (@"edu/umass/cs/reconfiguration/examples/noopsimple/NoopApp.java:222 condition failed: assert (this.appData.get(name) == null);"));
  }
  else if (data != nil && state != nil) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$$$$$", @"App-", myID_, @" updating ", name, @" with state ", state)];
    JreStrongAssign(&data->state_, state);
  }
  else ;
  if (state != nil) [self->appData_ putWithId:name withId:data];
  return true;
}

- (NSString *)description {
  return [EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_class_() getSimpleName];
}

- (void)dealloc {
  RELEASE_(myID_);
  RELEASE_(appData_);
  RELEASE_(messenger_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, 3, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 8, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 8, 9, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 10, 9, -1, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosInterfacesRequest;", 0x1, 11, 12, 13, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosInterfacesRequest;", 0x9, 14, 12, 15, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosInterfacesRequest;", 0x1, 11, 16, 13, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosInterfacesRequest;", 0x9, 14, 16, 13, -1, -1, -1 },
    { NULL, "LEduUmassCsGigapaxosInterfacesRequest;", 0xa, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 17, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x9, -1, -1, -1, 17, -1, -1 },
    { NULL, "Z", 0x1, 4, 18, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 19, 12, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 20, 21, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 22, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSStringArray:);
  methods[1].selector = @selector(setClientMessengerWithEduUmassCsNioInterfacesSSLMessenger:);
  methods[2].selector = @selector(executeWithEduUmassCsGigapaxosInterfacesRequest:withBoolean:);
  methods[3].selector = @selector(processRequestWithEduUmassCsReconfigurationExamplesAppRequest:withBoolean:);
  methods[4].selector = @selector(sendResponseWithEduUmassCsReconfigurationExamplesAppRequest:withBoolean:);
  methods[5].selector = @selector(sendResponseWithEduUmassCsReconfigurationExamplesAppRequest:);
  methods[6].selector = @selector(processStopRequestWithEduUmassCsReconfigurationExamplesAppRequest:);
  methods[7].selector = @selector(getRequestWithNSString:);
  methods[8].selector = @selector(staticGetRequestWithNSString:);
  methods[9].selector = @selector(getRequestWithByteArray:withEduUmassCsNioNioutilsNIOHeader:);
  methods[10].selector = @selector(staticGetRequestWithByteArray:withEduUmassCsNioNioutilsNIOHeader:);
  methods[11].selector = @selector(getNoopRequest);
  methods[12].selector = @selector(getRequestTypes);
  methods[13].selector = @selector(staticGetRequestTypes);
  methods[14].selector = @selector(executeWithEduUmassCsGigapaxosInterfacesRequest:);
  methods[15].selector = @selector(checkpointWithNSString:);
  methods[16].selector = @selector(restoreWithNSString:withNSString:);
  methods[17].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_INIT_STATE", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 23, -1, -1 },
    { "numReconfigurationsSinceRecovery_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "verbose_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "myID_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "appData_", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x12, -1, -1, 24, -1 },
    { "messenger_", "LEduUmassCsNioInterfacesSSLMessenger;", .constantValue.asLong = 0, 0x2, -1, -1, 25, -1 },
    { "DELEGATE_RESPONSE_MESSAGING", "Z", .constantValue.asBOOL = EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_DELEGATE_RESPONSE_MESSAGING, 0x1a, -1, -1, -1, -1 },
    { "types", "[LEduUmassCsReconfigurationExamplesAppRequest_PacketType;", .constantValue.asLong = 0, 0xa, -1, 26, -1, -1 },
  };
  static const void *ptrTable[] = { "[LNSString;", "setClientMessenger", "LEduUmassCsNioInterfacesSSLMessenger;", "(Ledu/umass/cs/nio/interfaces/SSLMessenger<*Lorg/json/JSONObject;>;)V", "execute", "LEduUmassCsGigapaxosInterfacesRequest;Z", "processRequest", "LEduUmassCsReconfigurationExamplesAppRequest;Z", "sendResponse", "LEduUmassCsReconfigurationExamplesAppRequest;", "processStopRequest", "getRequest", "LNSString;", "LEduUmassCsReconfigurationReconfigurationutilsRequestParseException;", "staticGetRequest", "LEduUmassCsReconfigurationReconfigurationutilsRequestParseException;LOrgJsonJSONException;", "[BLEduUmassCsNioNioutilsNIOHeader;", "()Ljava/util/Set<Ledu/umass/cs/nio/interfaces/IntegerPacketType;>;", "LEduUmassCsGigapaxosInterfacesRequest;", "checkpoint", "restore", "LNSString;LNSString;", "toString", &EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_DEFAULT_INIT_STATE, "Ljava/util/HashMap<Ljava/lang/String;Ledu/umass/cs/reconfiguration/examples/noopsimple/NoopApp$AppData;>;", "Ledu/umass/cs/nio/interfaces/SSLMessenger<*Lorg/json/JSONObject;>;", &EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_types, "LEduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData;", "Ledu/umass/cs/reconfiguration/examples/AbstractReconfigurablePaxosApp<Ljava/lang/String;>;Ledu/umass/cs/gigapaxos/interfaces/Replicable;Ledu/umass/cs/reconfiguration/interfaces/Reconfigurable;Ledu/umass/cs/gigapaxos/interfaces/ClientMessenger;Ledu/umass/cs/gigapaxos/interfaces/AppRequestParserBytes;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationExamplesNoopsimpleNoopApp = { "NoopApp", "edu.umass.cs.reconfiguration.examples.noopsimple", ptrTable, methods, fields, 7, 0x1, 18, 8, -1, 27, -1, 28, -1 };
  return &_EduUmassCsReconfigurationExamplesNoopsimpleNoopApp;
}

+ (void)initialize {
  if (self == [EduUmassCsReconfigurationExamplesNoopsimpleNoopApp class]) {
    JreStrongAssign(&EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_types, EduUmassCsReconfigurationExamplesAppRequest_PacketType_values());
    J2OBJC_SET_INITIALIZED(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp)
  }
}

@end

void EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_initWithNSStringArray_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *self, IOSObjectArray *args) {
  EduUmassCsReconfigurationExamplesAbstractReconfigurablePaxosApp_init(self);
  self->numReconfigurationsSinceRecovery_ = -1;
  self->verbose_ = false;
  JreStrongAssignAndConsume(&self->appData_, new_JavaUtilHashMap_init());
}

EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *new_EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_initWithNSStringArray_(IOSObjectArray *args) {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp, initWithNSStringArray_, args)
}

EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *create_EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_initWithNSStringArray_(IOSObjectArray *args) {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp, initWithNSStringArray_, args)
}

jboolean EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_processRequestWithEduUmassCsReconfigurationExamplesAppRequest_withBoolean_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *self, EduUmassCsReconfigurationExamplesAppRequest *request, jboolean doNotReplyToClient) {
  if ([((EduUmassCsReconfigurationExamplesAppRequest *) nil_chk(request)) getServiceName] == nil) return true;
  if ([request isStop]) return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_processStopRequestWithEduUmassCsReconfigurationExamplesAppRequest_(self, request);
  EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData *data = [((JavaUtilHashMap *) nil_chk(self->appData_)) getWithId:[request getServiceName]];
  if (data == nil) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$$$$@", @"App-", self->myID_, @" has no record for ", [request getServiceName], @" for ", request)];
    JreAssert(([request getResponse] == nil), (@"edu/umass/cs/reconfiguration/examples/noopsimple/NoopApp.java:97 condition failed: assert (request.getResponse() == null);"));
    return false;
  }
  JreAssert(((data != nil)), (@"edu/umass/cs/reconfiguration/examples/noopsimple/NoopApp.java:100 condition failed: assert (data != null);"));
  [data setStateWithNSString:[request getValue]];
  [self->appData_ putWithId:[request getServiceName] withId:data];
  if (self->verbose_) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$$$$$", @"App-", self->myID_, @" wrote to ", data->name_, @" with state ", [data getState])];
  EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_sendResponseWithEduUmassCsReconfigurationExamplesAppRequest_(self, request);
  return true;
}

void EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_sendResponseWithEduUmassCsReconfigurationExamplesAppRequest_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *self, EduUmassCsReconfigurationExamplesAppRequest *request) {
  [((EduUmassCsReconfigurationExamplesAppRequest *) nil_chk(request)) setResponseWithNSString:JreStrcat("$CI", [((EduUmassCsReconfigurationExamplesAppRequest_ResponseCodes *) nil_chk(JreLoadEnum(EduUmassCsReconfigurationExamplesAppRequest_ResponseCodes, ACK))) description], ' ', self->numReconfigurationsSinceRecovery_)];
}

jboolean EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_processStopRequestWithEduUmassCsReconfigurationExamplesAppRequest_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *self, EduUmassCsReconfigurationExamplesAppRequest *request) {
  return true;
}

id<EduUmassCsGigapaxosInterfacesRequest> EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_staticGetRequestWithNSString_(NSString *stringified) {
  EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_initialize();
  if ([((NSString *) nil_chk(stringified)) isEqual:EduUmassCsGigapaxosInterfacesRequest_NO_OP]) {
    return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_getNoopRequest();
  }
  return create_EduUmassCsReconfigurationExamplesAppRequest_initWithOrgJsonJSONObject_(create_OrgJsonJSONObject_initWithNSString_(stringified));
}

id<EduUmassCsGigapaxosInterfacesRequest> EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_staticGetRequestWithByteArray_withEduUmassCsNioNioutilsNIOHeader_(IOSByteArray *bytes, EduUmassCsNioNioutilsNIOHeader *header) {
  EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_initialize();
  @try {
    return EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_staticGetRequestWithNSString_([NSString java_stringWithBytes:bytes charsetName:EduUmassCsNioNioutilsNIOHeader_CHARSET]);
  }
  @catch (JavaIoUnsupportedEncodingException *e) {
    @throw create_EduUmassCsReconfigurationReconfigurationutilsRequestParseException_initWithJavaLangException_(e);
  }
  @catch (OrgJsonJSONException *e) {
    @throw create_EduUmassCsReconfigurationReconfigurationutilsRequestParseException_initWithJavaLangException_(e);
  }
}

id<EduUmassCsGigapaxosInterfacesRequest> EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_getNoopRequest() {
  EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_initialize();
  return create_EduUmassCsReconfigurationExamplesAppRequest_initWithNSString_withInt_withLong_withNSString_withEduUmassCsNioInterfacesIntegerPacketType_withBoolean_(nil, 0, 0, EduUmassCsGigapaxosInterfacesRequest_NO_OP, JreLoadEnum(EduUmassCsReconfigurationExamplesAppRequest_PacketType, DEFAULT_APP_REQUEST), false);
}

id<JavaUtilSet> EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_staticGetRequestTypes() {
  EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_initialize();
  return create_JavaUtilHashSet_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_types));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp)

@implementation EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData

- (instancetype)initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp:(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *)outer$
                                                              withNSString:(NSString *)name
                                                              withNSString:(NSString *)state {
  EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData_initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp_withNSString_withNSString_(self, outer$, name, state);
  return self;
}

- (void)setStateWithNSString:(NSString *)state {
  JreStrongAssign(&self->state_, state);
}

- (NSString *)getState {
  return self->state_;
}

- (void)dealloc {
  RELEASE_(name_);
  RELEASE_(state_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp:withNSString:withNSString:);
  methods[1].selector = @selector(setStateWithNSString:);
  methods[2].selector = @selector(getState);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "state_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;", "setState", "LNSString;", "LEduUmassCsReconfigurationExamplesNoopsimpleNoopApp;" };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData = { "AppData", "edu.umass.cs.reconfiguration.examples.noopsimple", ptrTable, methods, fields, 7, 0x2, 3, 2, 3, -1, -1, -1, -1 };
  return &_EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData;
}

@end

void EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData_initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp_withNSString_withNSString_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData *self, EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *outer$, NSString *name, NSString *state) {
  NSObject_init(self);
  JreStrongAssign(&self->state_, EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_DEFAULT_INIT_STATE);
  JreStrongAssign(&self->name_, name);
  JreStrongAssign(&self->state_, state);
}

EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData *new_EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData_initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp_withNSString_withNSString_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *outer$, NSString *name, NSString *state) {
  J2OBJC_NEW_IMPL(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData, initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp_withNSString_withNSString_, outer$, name, state)
}

EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData *create_EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData_initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp_withNSString_withNSString_(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp *outer$, NSString *name, NSString *state) {
  J2OBJC_CREATE_IMPL(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData, initWithEduUmassCsReconfigurationExamplesNoopsimpleNoopApp_withNSString_withNSString_, outer$, name, state)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsReconfigurationExamplesNoopsimpleNoopApp_AppData)