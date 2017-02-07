//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/gigapaxos/paxospackets/ProposalPacket.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EduUmassCsGigapaxosPaxospacketsProposalPacket")
#ifdef RESTRICT_EduUmassCsGigapaxosPaxospacketsProposalPacket
#define INCLUDE_ALL_EduUmassCsGigapaxosPaxospacketsProposalPacket 0
#else
#define INCLUDE_ALL_EduUmassCsGigapaxosPaxospacketsProposalPacket 1
#endif
#undef RESTRICT_EduUmassCsGigapaxosPaxospacketsProposalPacket

#if !defined (EduUmassCsGigapaxosPaxospacketsProposalPacket_) && (INCLUDE_ALL_EduUmassCsGigapaxosPaxospacketsProposalPacket || defined(INCLUDE_EduUmassCsGigapaxosPaxospacketsProposalPacket))
#define EduUmassCsGigapaxosPaxospacketsProposalPacket_

#define RESTRICT_EduUmassCsGigapaxosPaxospacketsRequestPacket 1
#define INCLUDE_EduUmassCsGigapaxosPaxospacketsRequestPacket 1
#include "edu/umass/cs/gigapaxos/paxospackets/RequestPacket.h"

@class IOSByteArray;
@class JavaNioByteBuffer;
@class NetMinidevJsonJSONObject;
@class OrgJsonJSONObject;

@interface EduUmassCsGigapaxosPaxospacketsProposalPacket : EduUmassCsGigapaxosPaxospacketsRequestPacket {
 @public
  jint slot_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)slot
withEduUmassCsGigapaxosPaxospacketsRequestPacket:(EduUmassCsGigapaxosPaxospacketsRequestPacket *)req;

- (instancetype)initWithOrgJsonJSONObject:(OrgJsonJSONObject *)json;

- (instancetype)initWithNetMinidevJsonJSONObject:(NetMinidevJsonJSONObject *)json;

- (IOSByteArray *)toBytes;

- (OrgJsonJSONObject *)toJSONObjectImpl;

- (NetMinidevJsonJSONObject *)toJSONSmartImpl;

#pragma mark Protected

- (instancetype)initWithJavaNioByteBuffer:(JavaNioByteBuffer *)bbuf;

- (instancetype)initWithEduUmassCsGigapaxosPaxospacketsProposalPacket:(EduUmassCsGigapaxosPaxospacketsProposalPacket *)prop;

- (NSString *)getSummaryString;

@end

J2OBJC_EMPTY_STATIC_INIT(EduUmassCsGigapaxosPaxospacketsProposalPacket)

inline jint EduUmassCsGigapaxosPaxospacketsProposalPacket_get_SIZEOF_PROPOSAL();
#define EduUmassCsGigapaxosPaxospacketsProposalPacket_SIZEOF_PROPOSAL 4
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsGigapaxosPaxospacketsProposalPacket, SIZEOF_PROPOSAL, jint)

FOUNDATION_EXPORT void EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithInt_withEduUmassCsGigapaxosPaxospacketsRequestPacket_(EduUmassCsGigapaxosPaxospacketsProposalPacket *self, jint slot, EduUmassCsGigapaxosPaxospacketsRequestPacket *req);

FOUNDATION_EXPORT EduUmassCsGigapaxosPaxospacketsProposalPacket *new_EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithInt_withEduUmassCsGigapaxosPaxospacketsRequestPacket_(jint slot, EduUmassCsGigapaxosPaxospacketsRequestPacket *req) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EduUmassCsGigapaxosPaxospacketsProposalPacket *create_EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithInt_withEduUmassCsGigapaxosPaxospacketsRequestPacket_(jint slot, EduUmassCsGigapaxosPaxospacketsRequestPacket *req);

FOUNDATION_EXPORT void EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithEduUmassCsGigapaxosPaxospacketsProposalPacket_(EduUmassCsGigapaxosPaxospacketsProposalPacket *self, EduUmassCsGigapaxosPaxospacketsProposalPacket *prop);

FOUNDATION_EXPORT EduUmassCsGigapaxosPaxospacketsProposalPacket *new_EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithEduUmassCsGigapaxosPaxospacketsProposalPacket_(EduUmassCsGigapaxosPaxospacketsProposalPacket *prop) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EduUmassCsGigapaxosPaxospacketsProposalPacket *create_EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithEduUmassCsGigapaxosPaxospacketsProposalPacket_(EduUmassCsGigapaxosPaxospacketsProposalPacket *prop);

FOUNDATION_EXPORT void EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithOrgJsonJSONObject_(EduUmassCsGigapaxosPaxospacketsProposalPacket *self, OrgJsonJSONObject *json);

FOUNDATION_EXPORT EduUmassCsGigapaxosPaxospacketsProposalPacket *new_EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithOrgJsonJSONObject_(OrgJsonJSONObject *json) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EduUmassCsGigapaxosPaxospacketsProposalPacket *create_EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithOrgJsonJSONObject_(OrgJsonJSONObject *json);

FOUNDATION_EXPORT void EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithNetMinidevJsonJSONObject_(EduUmassCsGigapaxosPaxospacketsProposalPacket *self, NetMinidevJsonJSONObject *json);

FOUNDATION_EXPORT EduUmassCsGigapaxosPaxospacketsProposalPacket *new_EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithNetMinidevJsonJSONObject_(NetMinidevJsonJSONObject *json) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EduUmassCsGigapaxosPaxospacketsProposalPacket *create_EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithNetMinidevJsonJSONObject_(NetMinidevJsonJSONObject *json);

FOUNDATION_EXPORT void EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithJavaNioByteBuffer_(EduUmassCsGigapaxosPaxospacketsProposalPacket *self, JavaNioByteBuffer *bbuf);

FOUNDATION_EXPORT EduUmassCsGigapaxosPaxospacketsProposalPacket *new_EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithJavaNioByteBuffer_(JavaNioByteBuffer *bbuf) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EduUmassCsGigapaxosPaxospacketsProposalPacket *create_EduUmassCsGigapaxosPaxospacketsProposalPacket_initWithJavaNioByteBuffer_(JavaNioByteBuffer *bbuf);

J2OBJC_TYPE_LITERAL_HEADER(EduUmassCsGigapaxosPaxospacketsProposalPacket)

#endif

#pragma pop_macro("INCLUDE_ALL_EduUmassCsGigapaxosPaxospacketsProposalPacket")