//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/nio/interfaces/Stringifiable.java
//

#include "J2ObjC_source.h"
#include "edu/umass/cs/nio/interfaces/Stringifiable.h"

@interface EduUmassCsNioInterfacesStringifiable : NSObject

@end

@implementation EduUmassCsNioInterfacesStringifiable

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSObject;", 0x401, 0, 1, -1, 2, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, 3, 4, -1, 5, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, 6, 7, 8, 9, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(valueOfWithNSString:);
  methods[1].selector = @selector(getValuesFromStringSetWithJavaUtilSet:);
  methods[2].selector = @selector(getValuesFromJSONArrayWithOrgJsonJSONArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "valueOf", "LNSString;", "(Ljava/lang/String;)TObjectType;", "getValuesFromStringSet", "LJavaUtilSet;", "(Ljava/util/Set<Ljava/lang/String;>;)Ljava/util/Set<TObjectType;>;", "getValuesFromJSONArray", "LOrgJsonJSONArray;", "LOrgJsonJSONException;", "(Lorg/json/JSONArray;)Ljava/util/Set<TObjectType;>;", "<ObjectType:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _EduUmassCsNioInterfacesStringifiable = { "Stringifiable", "edu.umass.cs.nio.interfaces", ptrTable, methods, NULL, 7, 0x609, 3, 0, -1, -1, -1, 10, -1 };
  return &_EduUmassCsNioInterfacesStringifiable;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(EduUmassCsNioInterfacesStringifiable)