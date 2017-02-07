//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/gigapaxos/interfaces/Replicable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EduUmassCsGigapaxosInterfacesReplicable")
#ifdef RESTRICT_EduUmassCsGigapaxosInterfacesReplicable
#define INCLUDE_ALL_EduUmassCsGigapaxosInterfacesReplicable 0
#else
#define INCLUDE_ALL_EduUmassCsGigapaxosInterfacesReplicable 1
#endif
#undef RESTRICT_EduUmassCsGigapaxosInterfacesReplicable

#if !defined (EduUmassCsGigapaxosInterfacesReplicable_) && (INCLUDE_ALL_EduUmassCsGigapaxosInterfacesReplicable || defined(INCLUDE_EduUmassCsGigapaxosInterfacesReplicable))
#define EduUmassCsGigapaxosInterfacesReplicable_

#define RESTRICT_EduUmassCsGigapaxosInterfacesApplication 1
#define INCLUDE_EduUmassCsGigapaxosInterfacesApplication 1
#include "edu/umass/cs/gigapaxos/interfaces/Application.h"

@protocol EduUmassCsGigapaxosInterfacesRequest;

@protocol EduUmassCsGigapaxosInterfacesReplicable < EduUmassCsGigapaxosInterfacesApplication, JavaObject >

- (jboolean)executeWithEduUmassCsGigapaxosInterfacesRequest:(id<EduUmassCsGigapaxosInterfacesRequest>)request
                                                withBoolean:(jboolean)doNotReplyToClient;

- (NSString *)checkpointWithNSString:(NSString *)name;

- (jboolean)restoreWithNSString:(NSString *)name
                   withNSString:(NSString *)state;

@end

J2OBJC_EMPTY_STATIC_INIT(EduUmassCsGigapaxosInterfacesReplicable)

J2OBJC_TYPE_LITERAL_HEADER(EduUmassCsGigapaxosInterfacesReplicable)

#endif

#pragma pop_macro("INCLUDE_ALL_EduUmassCsGigapaxosInterfacesReplicable")