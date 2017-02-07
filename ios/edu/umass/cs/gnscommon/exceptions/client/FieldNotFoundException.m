//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../src/edu/umass/cs/gnscommon/exceptions/client/FieldNotFoundException.java
//

#include "J2ObjC_source.h"
#include "edu/umass/cs/gnscommon/ResponseCode.h"
#include "edu/umass/cs/gnscommon/exceptions/client/ClientException.h"
#include "edu/umass/cs/gnscommon/exceptions/client/FieldNotFoundException.h"

inline jlong EduUmassCsGnscommonExceptionsClientFieldNotFoundException_get_serialVersionUID();
#define EduUmassCsGnscommonExceptionsClientFieldNotFoundException_serialVersionUID 2676899572105162853LL
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsGnscommonExceptionsClientFieldNotFoundException, serialVersionUID, jlong)

@implementation EduUmassCsGnscommonExceptionsClientFieldNotFoundException

- (instancetype)initWithEduUmassCsGnscommonResponseCode:(EduUmassCsGnscommonResponseCode *)code
                                           withNSString:(NSString *)message {
  EduUmassCsGnscommonExceptionsClientFieldNotFoundException_initWithEduUmassCsGnscommonResponseCode_withNSString_(self, code, message);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message {
  EduUmassCsGnscommonExceptionsClientFieldNotFoundException_initWithNSString_(self, message);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithEduUmassCsGnscommonResponseCode:withNSString:);
  methods[1].selector = @selector(initWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = EduUmassCsGnscommonExceptionsClientFieldNotFoundException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LEduUmassCsGnscommonResponseCode;LNSString;", "LNSString;" };
  static const J2ObjcClassInfo _EduUmassCsGnscommonExceptionsClientFieldNotFoundException = { "FieldNotFoundException", "edu.umass.cs.gnscommon.exceptions.client", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_EduUmassCsGnscommonExceptionsClientFieldNotFoundException;
}

@end

void EduUmassCsGnscommonExceptionsClientFieldNotFoundException_initWithEduUmassCsGnscommonResponseCode_withNSString_(EduUmassCsGnscommonExceptionsClientFieldNotFoundException *self, EduUmassCsGnscommonResponseCode *code, NSString *message) {
  EduUmassCsGnscommonExceptionsClientClientException_initWithEduUmassCsGnscommonResponseCode_withNSString_(self, code, message);
}

EduUmassCsGnscommonExceptionsClientFieldNotFoundException *new_EduUmassCsGnscommonExceptionsClientFieldNotFoundException_initWithEduUmassCsGnscommonResponseCode_withNSString_(EduUmassCsGnscommonResponseCode *code, NSString *message) {
  J2OBJC_NEW_IMPL(EduUmassCsGnscommonExceptionsClientFieldNotFoundException, initWithEduUmassCsGnscommonResponseCode_withNSString_, code, message)
}

EduUmassCsGnscommonExceptionsClientFieldNotFoundException *create_EduUmassCsGnscommonExceptionsClientFieldNotFoundException_initWithEduUmassCsGnscommonResponseCode_withNSString_(EduUmassCsGnscommonResponseCode *code, NSString *message) {
  J2OBJC_CREATE_IMPL(EduUmassCsGnscommonExceptionsClientFieldNotFoundException, initWithEduUmassCsGnscommonResponseCode_withNSString_, code, message)
}

void EduUmassCsGnscommonExceptionsClientFieldNotFoundException_initWithNSString_(EduUmassCsGnscommonExceptionsClientFieldNotFoundException *self, NSString *message) {
  EduUmassCsGnscommonExceptionsClientClientException_initWithEduUmassCsGnscommonResponseCode_withNSString_(self, JreLoadEnum(EduUmassCsGnscommonResponseCode, FIELD_NOT_FOUND_EXCEPTION), message);
}

EduUmassCsGnscommonExceptionsClientFieldNotFoundException *new_EduUmassCsGnscommonExceptionsClientFieldNotFoundException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(EduUmassCsGnscommonExceptionsClientFieldNotFoundException, initWithNSString_, message)
}

EduUmassCsGnscommonExceptionsClientFieldNotFoundException *create_EduUmassCsGnscommonExceptionsClientFieldNotFoundException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(EduUmassCsGnscommonExceptionsClientFieldNotFoundException, initWithNSString_, message)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsGnscommonExceptionsClientFieldNotFoundException)