//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/gigapaxos/examples/noop/NoopPaxosApp.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EduUmassCsGigapaxosExamplesNoopNoopPaxosApp")
#ifdef RESTRICT_EduUmassCsGigapaxosExamplesNoopNoopPaxosApp
#define INCLUDE_ALL_EduUmassCsGigapaxosExamplesNoopNoopPaxosApp 0
#else
#define INCLUDE_ALL_EduUmassCsGigapaxosExamplesNoopNoopPaxosApp 1
#endif
#undef RESTRICT_EduUmassCsGigapaxosExamplesNoopNoopPaxosApp

#if !defined (EduUmassCsGigapaxosExamplesNoopNoopPaxosApp_) && (INCLUDE_ALL_EduUmassCsGigapaxosExamplesNoopNoopPaxosApp || defined(INCLUDE_EduUmassCsGigapaxosExamplesNoopNoopPaxosApp))
#define EduUmassCsGigapaxosExamplesNoopNoopPaxosApp_

#define RESTRICT_EduUmassCsGigapaxosInterfacesReplicable 1
#define INCLUDE_EduUmassCsGigapaxosInterfacesReplicable 1
#include "edu/umass/cs/gigapaxos/interfaces/Replicable.h"

@class EduUmassCsNioNioutilsNIOHeader;
@class IOSByteArray;
@protocol EduUmassCsGigapaxosInterfacesRequest;
@protocol JavaUtilSet;

@interface EduUmassCsGigapaxosExamplesNoopNoopPaxosApp : NSObject < EduUmassCsGigapaxosInterfacesReplicable >

#pragma mark Public

- (instancetype)init;

- (NSString *)checkpointWithNSString:(NSString *)name;

- (jboolean)executeWithEduUmassCsGigapaxosInterfacesRequest:(id<EduUmassCsGigapaxosInterfacesRequest>)request;

- (jboolean)executeWithEduUmassCsGigapaxosInterfacesRequest:(id<EduUmassCsGigapaxosInterfacesRequest>)request
                                                withBoolean:(jboolean)doNotReplyToClient;

- (id<EduUmassCsGigapaxosInterfacesRequest>)getRequestWithNSString:(NSString *)stringified;

- (id<JavaUtilSet>)getRequestTypes;

- (jboolean)restoreWithNSString:(NSString *)name
                   withNSString:(NSString *)state;

@end

J2OBJC_EMPTY_STATIC_INIT(EduUmassCsGigapaxosExamplesNoopNoopPaxosApp)

FOUNDATION_EXPORT void EduUmassCsGigapaxosExamplesNoopNoopPaxosApp_init(EduUmassCsGigapaxosExamplesNoopNoopPaxosApp *self);

FOUNDATION_EXPORT EduUmassCsGigapaxosExamplesNoopNoopPaxosApp *new_EduUmassCsGigapaxosExamplesNoopNoopPaxosApp_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EduUmassCsGigapaxosExamplesNoopNoopPaxosApp *create_EduUmassCsGigapaxosExamplesNoopNoopPaxosApp_init();

J2OBJC_TYPE_LITERAL_HEADER(EduUmassCsGigapaxosExamplesNoopNoopPaxosApp)

#endif

#pragma pop_macro("INCLUDE_ALL_EduUmassCsGigapaxosExamplesNoopNoopPaxosApp")