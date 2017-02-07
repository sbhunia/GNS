//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../src/edu/umass/cs/gnscommon/packets/AdminCommandPacket.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "edu/umass/cs/gnscommon/CommandType.h"
#include "edu/umass/cs/gnscommon/packets/AdminCommandPacket.h"
#include "edu/umass/cs/gnscommon/packets/CommandPacket.h"
#include "edu/umass/cs/gnsserver/gnsapp/packet/Packet.h"
#include "org/json/JSONObject.h"

@implementation EduUmassCsGnscommonPacketsAdminCommandPacket

- (instancetype)initWithLong:(jlong)requestId
       withOrgJsonJSONObject:(OrgJsonJSONObject *)command {
  EduUmassCsGnscommonPacketsAdminCommandPacket_initWithLong_withOrgJsonJSONObject_(self, requestId, command);
  return self;
}

- (instancetype)initWithOrgJsonJSONObject:(OrgJsonJSONObject *)json {
  EduUmassCsGnscommonPacketsAdminCommandPacket_initWithOrgJsonJSONObject_(self, json);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)bytes {
  EduUmassCsGnscommonPacketsAdminCommandPacket_initWithByteArray_(self, bytes);
  return self;
}

- (void)validateCommandType {
  JreAssert((([((EduUmassCsGnscommonCommandType *) nil_chk([self getCommandType])) isMutualAuth])), (@"edu/umass/cs/gnscommon/packets/AdminCommandPacket.java:35 condition failed: assert (this.getCommandType().isMutualAuth());"));
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, 2, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, 4, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithLong:withOrgJsonJSONObject:);
  methods[1].selector = @selector(initWithOrgJsonJSONObject:);
  methods[2].selector = @selector(initWithByteArray:);
  methods[3].selector = @selector(validateCommandType);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "JLOrgJsonJSONObject;", "LOrgJsonJSONObject;", "LOrgJsonJSONException;", "[B", "LEduUmassCsReconfigurationReconfigurationutilsRequestParseException;" };
  static const J2ObjcClassInfo _EduUmassCsGnscommonPacketsAdminCommandPacket = { "AdminCommandPacket", "edu.umass.cs.gnscommon.packets", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_EduUmassCsGnscommonPacketsAdminCommandPacket;
}

@end

void EduUmassCsGnscommonPacketsAdminCommandPacket_initWithLong_withOrgJsonJSONObject_(EduUmassCsGnscommonPacketsAdminCommandPacket *self, jlong requestId, OrgJsonJSONObject *command) {
  EduUmassCsGnscommonPacketsCommandPacket_initWithLong_withOrgJsonJSONObject_(self, requestId, command);
  [self setTypeWithEduUmassCsGnsserverGnsappPacketPacket_PacketType:JreLoadEnum(EduUmassCsGnsserverGnsappPacketPacket_PacketType, ADMIN_COMMAND)];
  JreAssert((([((EduUmassCsGnscommonCommandType *) nil_chk([self getCommandType])) isMutualAuth])), (@"edu/umass/cs/gnscommon/packets/AdminCommandPacket.java:15 condition failed: assert (this.getCommandType().isMutualAuth());"));
}

EduUmassCsGnscommonPacketsAdminCommandPacket *new_EduUmassCsGnscommonPacketsAdminCommandPacket_initWithLong_withOrgJsonJSONObject_(jlong requestId, OrgJsonJSONObject *command) {
  J2OBJC_NEW_IMPL(EduUmassCsGnscommonPacketsAdminCommandPacket, initWithLong_withOrgJsonJSONObject_, requestId, command)
}

EduUmassCsGnscommonPacketsAdminCommandPacket *create_EduUmassCsGnscommonPacketsAdminCommandPacket_initWithLong_withOrgJsonJSONObject_(jlong requestId, OrgJsonJSONObject *command) {
  J2OBJC_CREATE_IMPL(EduUmassCsGnscommonPacketsAdminCommandPacket, initWithLong_withOrgJsonJSONObject_, requestId, command)
}

void EduUmassCsGnscommonPacketsAdminCommandPacket_initWithOrgJsonJSONObject_(EduUmassCsGnscommonPacketsAdminCommandPacket *self, OrgJsonJSONObject *json) {
  EduUmassCsGnscommonPacketsCommandPacket_initWithOrgJsonJSONObject_(self, json);
  [self setTypeWithEduUmassCsGnsserverGnsappPacketPacket_PacketType:JreLoadEnum(EduUmassCsGnsserverGnsappPacketPacket_PacketType, ADMIN_COMMAND)];
  JreAssert((([((EduUmassCsGnscommonCommandType *) nil_chk([self getCommandType])) isMutualAuth])), (@"edu/umass/cs/gnscommon/packets/AdminCommandPacket.java:22 condition failed: assert (this.getCommandType().isMutualAuth());"));
}

EduUmassCsGnscommonPacketsAdminCommandPacket *new_EduUmassCsGnscommonPacketsAdminCommandPacket_initWithOrgJsonJSONObject_(OrgJsonJSONObject *json) {
  J2OBJC_NEW_IMPL(EduUmassCsGnscommonPacketsAdminCommandPacket, initWithOrgJsonJSONObject_, json)
}

EduUmassCsGnscommonPacketsAdminCommandPacket *create_EduUmassCsGnscommonPacketsAdminCommandPacket_initWithOrgJsonJSONObject_(OrgJsonJSONObject *json) {
  J2OBJC_CREATE_IMPL(EduUmassCsGnscommonPacketsAdminCommandPacket, initWithOrgJsonJSONObject_, json)
}

void EduUmassCsGnscommonPacketsAdminCommandPacket_initWithByteArray_(EduUmassCsGnscommonPacketsAdminCommandPacket *self, IOSByteArray *bytes) {
  EduUmassCsGnscommonPacketsCommandPacket_initWithByteArray_(self, bytes);
  [self setTypeWithEduUmassCsGnsserverGnsappPacketPacket_PacketType:JreLoadEnum(EduUmassCsGnsserverGnsappPacketPacket_PacketType, ADMIN_COMMAND)];
  JreAssert((([((EduUmassCsGnscommonCommandType *) nil_chk([self getCommandType])) isMutualAuth])), (@"edu/umass/cs/gnscommon/packets/AdminCommandPacket.java:29 condition failed: assert (this.getCommandType().isMutualAuth());"));
}

EduUmassCsGnscommonPacketsAdminCommandPacket *new_EduUmassCsGnscommonPacketsAdminCommandPacket_initWithByteArray_(IOSByteArray *bytes) {
  J2OBJC_NEW_IMPL(EduUmassCsGnscommonPacketsAdminCommandPacket, initWithByteArray_, bytes)
}

EduUmassCsGnscommonPacketsAdminCommandPacket *create_EduUmassCsGnscommonPacketsAdminCommandPacket_initWithByteArray_(IOSByteArray *bytes) {
  J2OBJC_CREATE_IMPL(EduUmassCsGnscommonPacketsAdminCommandPacket, initWithByteArray_, bytes)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsGnscommonPacketsAdminCommandPacket)