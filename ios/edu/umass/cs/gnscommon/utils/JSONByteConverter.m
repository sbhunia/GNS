//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../src/edu/umass/cs/gnscommon/utils/JSONByteConverter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "edu/umass/cs/gnscommon/utils/JSONByteConverter.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/nio/Buffer.h"
#include "java/nio/ByteBuffer.h"
#include "java/util/Iterator.h"
#include "org/json/JSONArray.h"
#include "org/json/JSONException.h"
#include "org/json/JSONObject.h"

@interface EduUmassCsGnscommonUtilsJSONByteConverter ()

+ (void)byteJSONValueWithId:(id)value
withJavaIoByteArrayOutputStream:(JavaIoByteArrayOutputStream *)outArg;

+ (void)byteJSONValueWithId:(id)value
      withJavaNioByteBuffer:(JavaNioByteBuffer *)outArg;

+ (id)valueFromBytesWithJavaNioByteBuffer:(JavaNioByteBuffer *)bytes;

+ (OrgJsonJSONObject *)mapFromBytesWithJavaNioByteBuffer:(JavaNioByteBuffer *)bytes;

+ (OrgJsonJSONArray *)arrayFromBytesWithJavaNioByteBuffer:(JavaNioByteBuffer *)bytes;

@end

inline IOSClass *EduUmassCsGnscommonUtilsJSONByteConverter_get_jsonClass();
inline IOSClass *EduUmassCsGnscommonUtilsJSONByteConverter_set_jsonClass(IOSClass *value);
static IOSClass *EduUmassCsGnscommonUtilsJSONByteConverter_jsonClass;
J2OBJC_STATIC_FIELD_OBJ(EduUmassCsGnscommonUtilsJSONByteConverter, jsonClass, IOSClass *)

inline jbyte EduUmassCsGnscommonUtilsJSONByteConverter_get_STRING_INDICATOR();
#define EduUmassCsGnscommonUtilsJSONByteConverter_STRING_INDICATOR 0
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsGnscommonUtilsJSONByteConverter, STRING_INDICATOR, jbyte)

inline jbyte EduUmassCsGnscommonUtilsJSONByteConverter_get_ARRAY_INDICATOR();
#define EduUmassCsGnscommonUtilsJSONByteConverter_ARRAY_INDICATOR 1
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsGnscommonUtilsJSONByteConverter, ARRAY_INDICATOR, jbyte)

inline jbyte EduUmassCsGnscommonUtilsJSONByteConverter_get_MAP_INDICATOR();
#define EduUmassCsGnscommonUtilsJSONByteConverter_MAP_INDICATOR 2
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsGnscommonUtilsJSONByteConverter, MAP_INDICATOR, jbyte)

inline jbyte EduUmassCsGnscommonUtilsJSONByteConverter_get_INTEGER_INDICATOR();
#define EduUmassCsGnscommonUtilsJSONByteConverter_INTEGER_INDICATOR 3
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsGnscommonUtilsJSONByteConverter, INTEGER_INDICATOR, jbyte)

inline jbyte EduUmassCsGnscommonUtilsJSONByteConverter_get_LONG_INDICATOR();
#define EduUmassCsGnscommonUtilsJSONByteConverter_LONG_INDICATOR 4
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsGnscommonUtilsJSONByteConverter, LONG_INDICATOR, jbyte)

inline jbyte EduUmassCsGnscommonUtilsJSONByteConverter_get_FLOAT_INDICATOR();
#define EduUmassCsGnscommonUtilsJSONByteConverter_FLOAT_INDICATOR 5
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsGnscommonUtilsJSONByteConverter, FLOAT_INDICATOR, jbyte)

inline jbyte EduUmassCsGnscommonUtilsJSONByteConverter_get_DOUBLE_INDICATOR();
#define EduUmassCsGnscommonUtilsJSONByteConverter_DOUBLE_INDICATOR 6
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsGnscommonUtilsJSONByteConverter, DOUBLE_INDICATOR, jbyte)

inline jbyte EduUmassCsGnscommonUtilsJSONByteConverter_get_BOOLEAN_INDICATOR();
#define EduUmassCsGnscommonUtilsJSONByteConverter_BOOLEAN_INDICATOR 7
J2OBJC_STATIC_FIELD_CONSTANT(EduUmassCsGnscommonUtilsJSONByteConverter, BOOLEAN_INDICATOR, jbyte)

__attribute__((unused)) static void EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaIoByteArrayOutputStream_(id value, JavaIoByteArrayOutputStream *outArg);

__attribute__((unused)) static void EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaNioByteBuffer_(id value, JavaNioByteBuffer *outArg);

__attribute__((unused)) static id EduUmassCsGnscommonUtilsJSONByteConverter_valueFromBytesWithJavaNioByteBuffer_(JavaNioByteBuffer *bytes);

__attribute__((unused)) static OrgJsonJSONObject *EduUmassCsGnscommonUtilsJSONByteConverter_mapFromBytesWithJavaNioByteBuffer_(JavaNioByteBuffer *bytes);

__attribute__((unused)) static OrgJsonJSONArray *EduUmassCsGnscommonUtilsJSONByteConverter_arrayFromBytesWithJavaNioByteBuffer_(JavaNioByteBuffer *bytes);

J2OBJC_INITIALIZED_DEFN(EduUmassCsGnscommonUtilsJSONByteConverter)

@implementation EduUmassCsGnscommonUtilsJSONByteConverter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  EduUmassCsGnscommonUtilsJSONByteConverter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)byteJSONValueWithId:(id)value
withJavaIoByteArrayOutputStream:(JavaIoByteArrayOutputStream *)outArg {
  EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaIoByteArrayOutputStream_(value, outArg);
}

+ (void)byteJSONValueWithId:(id)value
      withJavaNioByteBuffer:(JavaNioByteBuffer *)outArg {
  EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaNioByteBuffer_(value, outArg);
}

+ (IOSByteArray *)toBytesHardcodedWithOrgJsonJSONObject:(OrgJsonJSONObject *)json {
  return EduUmassCsGnscommonUtilsJSONByteConverter_toBytesHardcodedWithOrgJsonJSONObject_(json);
}

+ (id)valueFromBytesWithJavaNioByteBuffer:(JavaNioByteBuffer *)bytes {
  return EduUmassCsGnscommonUtilsJSONByteConverter_valueFromBytesWithJavaNioByteBuffer_(bytes);
}

+ (OrgJsonJSONObject *)mapFromBytesWithJavaNioByteBuffer:(JavaNioByteBuffer *)bytes {
  return EduUmassCsGnscommonUtilsJSONByteConverter_mapFromBytesWithJavaNioByteBuffer_(bytes);
}

+ (OrgJsonJSONArray *)arrayFromBytesWithJavaNioByteBuffer:(JavaNioByteBuffer *)bytes {
  return EduUmassCsGnscommonUtilsJSONByteConverter_arrayFromBytesWithJavaNioByteBuffer_(bytes);
}

+ (OrgJsonJSONObject *)fromBytesHardcodedWithByteArray:(IOSByteArray *)bytes {
  return EduUmassCsGnscommonUtilsJSONByteConverter_fromBytesHardcodedWithByteArray_(bytes);
}

+ (OrgJsonJSONObject *)fromBytesHardcodedWithJavaNioByteBuffer:(JavaNioByteBuffer *)bbuf {
  return EduUmassCsGnscommonUtilsJSONByteConverter_fromBytesHardcodedWithJavaNioByteBuffer_(bbuf);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1a, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x1a, 0, 3, 2, -1, -1, -1 },
    { NULL, "[B", 0x19, 4, 5, 2, -1, -1, -1 },
    { NULL, "LNSObject;", 0xa, 6, 7, 8, -1, -1, -1 },
    { NULL, "LOrgJsonJSONObject;", 0xa, 9, 7, 8, -1, -1, -1 },
    { NULL, "LOrgJsonJSONArray;", 0xa, 10, 7, 8, -1, -1, -1 },
    { NULL, "LOrgJsonJSONObject;", 0x9, 11, 12, 8, -1, -1, -1 },
    { NULL, "LOrgJsonJSONObject;", 0x9, 11, 7, 8, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(byteJSONValueWithId:withJavaIoByteArrayOutputStream:);
  methods[2].selector = @selector(byteJSONValueWithId:withJavaNioByteBuffer:);
  methods[3].selector = @selector(toBytesHardcodedWithOrgJsonJSONObject:);
  methods[4].selector = @selector(valueFromBytesWithJavaNioByteBuffer:);
  methods[5].selector = @selector(mapFromBytesWithJavaNioByteBuffer:);
  methods[6].selector = @selector(arrayFromBytesWithJavaNioByteBuffer:);
  methods[7].selector = @selector(fromBytesHardcodedWithByteArray:);
  methods[8].selector = @selector(fromBytesHardcodedWithJavaNioByteBuffer:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "jsonClass", "LIOSClass;", .constantValue.asLong = 0, 0xa, -1, 13, 14, -1 },
    { "STRING_INDICATOR", "B", .constantValue.asChar = EduUmassCsGnscommonUtilsJSONByteConverter_STRING_INDICATOR, 0x1a, -1, -1, -1, -1 },
    { "ARRAY_INDICATOR", "B", .constantValue.asChar = EduUmassCsGnscommonUtilsJSONByteConverter_ARRAY_INDICATOR, 0x1a, -1, -1, -1, -1 },
    { "MAP_INDICATOR", "B", .constantValue.asChar = EduUmassCsGnscommonUtilsJSONByteConverter_MAP_INDICATOR, 0x1a, -1, -1, -1, -1 },
    { "INTEGER_INDICATOR", "B", .constantValue.asChar = EduUmassCsGnscommonUtilsJSONByteConverter_INTEGER_INDICATOR, 0x1a, -1, -1, -1, -1 },
    { "LONG_INDICATOR", "B", .constantValue.asChar = EduUmassCsGnscommonUtilsJSONByteConverter_LONG_INDICATOR, 0x1a, -1, -1, -1, -1 },
    { "FLOAT_INDICATOR", "B", .constantValue.asChar = EduUmassCsGnscommonUtilsJSONByteConverter_FLOAT_INDICATOR, 0x1a, -1, -1, -1, -1 },
    { "DOUBLE_INDICATOR", "B", .constantValue.asChar = EduUmassCsGnscommonUtilsJSONByteConverter_DOUBLE_INDICATOR, 0x1a, -1, -1, -1, -1 },
    { "BOOLEAN_INDICATOR", "B", .constantValue.asChar = EduUmassCsGnscommonUtilsJSONByteConverter_BOOLEAN_INDICATOR, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "byteJSONValue", "LNSObject;LJavaIoByteArrayOutputStream;", "LOrgJsonJSONException;LJavaIoIOException;", "LNSObject;LJavaNioByteBuffer;", "toBytesHardcoded", "LOrgJsonJSONObject;", "valueFromBytes", "LJavaNioByteBuffer;", "LOrgJsonJSONException;", "mapFromBytes", "arrayFromBytes", "fromBytesHardcoded", "[B", &EduUmassCsGnscommonUtilsJSONByteConverter_jsonClass, "Ljava/lang/Class<+Lorg/json/JSONObject;>;" };
  static const J2ObjcClassInfo _EduUmassCsGnscommonUtilsJSONByteConverter = { "JSONByteConverter", "edu.umass.cs.gnscommon.utils", ptrTable, methods, fields, 7, 0x1, 9, 9, -1, -1, -1, -1, -1 };
  return &_EduUmassCsGnscommonUtilsJSONByteConverter;
}

+ (void)initialize {
  if (self == [EduUmassCsGnscommonUtilsJSONByteConverter class]) {
    JreStrongAssign(&EduUmassCsGnscommonUtilsJSONByteConverter_jsonClass, [create_OrgJsonJSONObject_init() java_getClass]);
    J2OBJC_SET_INITIALIZED(EduUmassCsGnscommonUtilsJSONByteConverter)
  }
}

@end

void EduUmassCsGnscommonUtilsJSONByteConverter_init(EduUmassCsGnscommonUtilsJSONByteConverter *self) {
  NSObject_init(self);
}

EduUmassCsGnscommonUtilsJSONByteConverter *new_EduUmassCsGnscommonUtilsJSONByteConverter_init() {
  J2OBJC_NEW_IMPL(EduUmassCsGnscommonUtilsJSONByteConverter, init)
}

EduUmassCsGnscommonUtilsJSONByteConverter *create_EduUmassCsGnscommonUtilsJSONByteConverter_init() {
  J2OBJC_CREATE_IMPL(EduUmassCsGnscommonUtilsJSONByteConverter, init)
}

void EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaIoByteArrayOutputStream_(id value, JavaIoByteArrayOutputStream *outArg) {
  EduUmassCsGnscommonUtilsJSONByteConverter_initialize();
  JavaNioByteBuffer *fourByteBuffer = JavaNioByteBuffer_allocateWithInt_(4);
  JavaNioByteBuffer *eightByteBuffer = JavaNioByteBuffer_allocateWithInt_(8);
  if ([value isKindOfClass:[OrgJsonJSONArray class]]) {
    OrgJsonJSONArray *array = (OrgJsonJSONArray *) cast_chk(value, [OrgJsonJSONArray class]);
    jint length = [((OrgJsonJSONArray *) nil_chk(array)) length];
    [((JavaIoByteArrayOutputStream *) nil_chk(outArg)) writeWithInt:EduUmassCsGnscommonUtilsJSONByteConverter_ARRAY_INDICATOR];
    [((JavaNioByteBuffer *) nil_chk(fourByteBuffer)) rewind];
    [fourByteBuffer putIntWithInt:length];
    [outArg writeWithByteArray:[fourByteBuffer array]];
    for (jint i = 0; i < length; i++) {
      EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaIoByteArrayOutputStream_([array getWithInt:i], outArg);
    }
  }
  else if ([value isKindOfClass:[JavaLangInteger class]]) {
    [((JavaIoByteArrayOutputStream *) nil_chk(outArg)) writeWithInt:EduUmassCsGnscommonUtilsJSONByteConverter_INTEGER_INDICATOR];
    [((JavaNioByteBuffer *) nil_chk(fourByteBuffer)) rewind];
    [fourByteBuffer putIntWithInt:[((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(value, [JavaLangInteger class]))) intValue]];
    [outArg writeWithByteArray:[fourByteBuffer array]];
  }
  else if ([value isKindOfClass:[JavaLangLong class]]) {
    [((JavaIoByteArrayOutputStream *) nil_chk(outArg)) writeWithInt:EduUmassCsGnscommonUtilsJSONByteConverter_LONG_INDICATOR];
    [((JavaNioByteBuffer *) nil_chk(eightByteBuffer)) rewind];
    [eightByteBuffer putLongWithLong:[((JavaLangLong *) nil_chk((JavaLangLong *) cast_chk(value, [JavaLangLong class]))) longLongValue]];
    [outArg writeWithByteArray:[eightByteBuffer array]];
  }
  else if ([value isKindOfClass:[JavaLangBoolean class]]) {
    [((JavaIoByteArrayOutputStream *) nil_chk(outArg)) writeWithInt:EduUmassCsGnscommonUtilsJSONByteConverter_BOOLEAN_INDICATOR];
    if ([((JavaLangBoolean *) nil_chk((JavaLangBoolean *) cast_chk(value, [JavaLangBoolean class]))) booleanValue]) {
      [outArg writeWithInt:1];
    }
    else {
      [outArg writeWithInt:0];
    }
  }
  else if ([value isKindOfClass:[JavaLangFloat class]]) {
    [((JavaIoByteArrayOutputStream *) nil_chk(outArg)) writeWithInt:EduUmassCsGnscommonUtilsJSONByteConverter_FLOAT_INDICATOR];
    [((JavaNioByteBuffer *) nil_chk(fourByteBuffer)) rewind];
    [fourByteBuffer putFloatWithFloat:[((JavaLangFloat *) nil_chk((JavaLangFloat *) cast_chk(value, [JavaLangFloat class]))) floatValue]];
    [outArg writeWithByteArray:[fourByteBuffer array]];
  }
  else if ([value isKindOfClass:[JavaLangDouble class]]) {
    [((JavaIoByteArrayOutputStream *) nil_chk(outArg)) writeWithInt:EduUmassCsGnscommonUtilsJSONByteConverter_DOUBLE_INDICATOR];
    [((JavaNioByteBuffer *) nil_chk(eightByteBuffer)) rewind];
    [eightByteBuffer putDoubleWithDouble:[((JavaLangDouble *) nil_chk((JavaLangDouble *) cast_chk(value, [JavaLangDouble class]))) doubleValue]];
    [outArg writeWithByteArray:[eightByteBuffer array]];
  }
  else if ([value isKindOfClass:[NSString class]]) {
    IOSByteArray *stringBytes = [((NSString *) nil_chk(((NSString *) cast_chk(value, [NSString class])))) java_getBytes];
    [((JavaIoByteArrayOutputStream *) nil_chk(outArg)) writeWithInt:EduUmassCsGnscommonUtilsJSONByteConverter_STRING_INDICATOR];
    jint length = ((IOSByteArray *) nil_chk(stringBytes))->size_;
    [((JavaNioByteBuffer *) nil_chk(fourByteBuffer)) rewind];
    [fourByteBuffer putIntWithInt:length];
    [outArg writeWithByteArray:[fourByteBuffer array]];
    [outArg writeWithByteArray:stringBytes];
  }
  else if ([value isKindOfClass:[OrgJsonJSONObject class]]) {
    OrgJsonJSONObject *json = (OrgJsonJSONObject *) cast_chk(value, [OrgJsonJSONObject class]);
    id<JavaUtilIterator> iterator = [((OrgJsonJSONObject *) nil_chk(json)) keys];
    jint length = [json length];
    [((JavaIoByteArrayOutputStream *) nil_chk(outArg)) writeWithInt:EduUmassCsGnscommonUtilsJSONByteConverter_MAP_INDICATOR];
    [((JavaNioByteBuffer *) nil_chk(fourByteBuffer)) rewind];
    [fourByteBuffer putIntWithInt:length];
    [outArg writeWithByteArray:[fourByteBuffer array]];
    while ([((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]) {
      NSString *key = [iterator next];
      id val = [json getWithNSString:key];
      EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaIoByteArrayOutputStream_(key, outArg);
      EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaIoByteArrayOutputStream_(val, outArg);
    }
  }
  else {
    @throw create_OrgJsonJSONException_initWithNSString_(@"UNKNOWN TYPE IN JSON!");
  }
}

void EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaNioByteBuffer_(id value, JavaNioByteBuffer *outArg) {
  EduUmassCsGnscommonUtilsJSONByteConverter_initialize();
  if ([value isKindOfClass:[OrgJsonJSONArray class]]) {
    OrgJsonJSONArray *array = (OrgJsonJSONArray *) cast_chk(value, [OrgJsonJSONArray class]);
    jint length = [((OrgJsonJSONArray *) nil_chk(array)) length];
    [((JavaNioByteBuffer *) nil_chk(outArg)) putWithByte:EduUmassCsGnscommonUtilsJSONByteConverter_ARRAY_INDICATOR];
    [outArg putIntWithInt:length];
    for (jint i = 0; i < length; i++) {
      EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaNioByteBuffer_([array getWithInt:i], outArg);
    }
  }
  else if ([value isKindOfClass:[JavaLangInteger class]]) {
    [((JavaNioByteBuffer *) nil_chk(outArg)) putWithByte:EduUmassCsGnscommonUtilsJSONByteConverter_INTEGER_INDICATOR];
    [outArg putIntWithInt:[((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(value, [JavaLangInteger class]))) intValue]];
  }
  else if ([value isKindOfClass:[JavaLangLong class]]) {
    [((JavaNioByteBuffer *) nil_chk(outArg)) putWithByte:EduUmassCsGnscommonUtilsJSONByteConverter_LONG_INDICATOR];
    [outArg putLongWithLong:[((JavaLangLong *) nil_chk((JavaLangLong *) cast_chk(value, [JavaLangLong class]))) longLongValue]];
  }
  else if ([value isKindOfClass:[JavaLangBoolean class]]) {
    [((JavaNioByteBuffer *) nil_chk(outArg)) putWithByte:EduUmassCsGnscommonUtilsJSONByteConverter_BOOLEAN_INDICATOR];
    if ([((JavaLangBoolean *) nil_chk((JavaLangBoolean *) cast_chk(value, [JavaLangBoolean class]))) booleanValue]) {
      [outArg putWithByte:(jbyte) 1];
    }
    else {
      [outArg putWithByte:(jbyte) 0];
    }
  }
  else if ([value isKindOfClass:[NSString class]]) {
    IOSByteArray *stringBytes = [((NSString *) nil_chk(((NSString *) cast_chk(value, [NSString class])))) java_getBytes];
    [((JavaNioByteBuffer *) nil_chk(outArg)) putWithByte:EduUmassCsGnscommonUtilsJSONByteConverter_STRING_INDICATOR];
    jint length = ((IOSByteArray *) nil_chk(stringBytes))->size_;
    [outArg putIntWithInt:length];
    [outArg putWithByteArray:stringBytes];
  }
  else if ([value isKindOfClass:[OrgJsonJSONObject class]]) {
    OrgJsonJSONObject *json = (OrgJsonJSONObject *) cast_chk(value, [OrgJsonJSONObject class]);
    id<JavaUtilIterator> iterator = [((OrgJsonJSONObject *) nil_chk(json)) keys];
    jint length = [json length];
    [((JavaNioByteBuffer *) nil_chk(outArg)) putWithByte:EduUmassCsGnscommonUtilsJSONByteConverter_MAP_INDICATOR];
    [outArg putIntWithInt:length];
    while ([((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]) {
      NSString *key = [iterator next];
      id val = [json getWithNSString:key];
      EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaNioByteBuffer_(key, outArg);
      EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaNioByteBuffer_(val, outArg);
    }
  }
  else {
    @throw create_OrgJsonJSONException_initWithNSString_(@"UNKNOWN TYPE IN JSON!");
  }
}

IOSByteArray *EduUmassCsGnscommonUtilsJSONByteConverter_toBytesHardcodedWithOrgJsonJSONObject_(OrgJsonJSONObject *json) {
  EduUmassCsGnscommonUtilsJSONByteConverter_initialize();
  JavaIoByteArrayOutputStream *out = create_JavaIoByteArrayOutputStream_initWithInt_(1200);
  EduUmassCsGnscommonUtilsJSONByteConverter_byteJSONValueWithId_withJavaIoByteArrayOutputStream_(json, out);
  [out close];
  IOSByteArray *bytes = [out toByteArray];
  return bytes;
}

id EduUmassCsGnscommonUtilsJSONByteConverter_valueFromBytesWithJavaNioByteBuffer_(JavaNioByteBuffer *bytes) {
  EduUmassCsGnscommonUtilsJSONByteConverter_initialize();
  jbyte type = [((JavaNioByteBuffer *) nil_chk(bytes)) get];
  {
    jint length;
    IOSByteArray *stringBytes;
    switch (type) {
      case EduUmassCsGnscommonUtilsJSONByteConverter_MAP_INDICATOR:
      return EduUmassCsGnscommonUtilsJSONByteConverter_mapFromBytesWithJavaNioByteBuffer_(bytes);
      case EduUmassCsGnscommonUtilsJSONByteConverter_ARRAY_INDICATOR:
      return EduUmassCsGnscommonUtilsJSONByteConverter_arrayFromBytesWithJavaNioByteBuffer_(bytes);
      case EduUmassCsGnscommonUtilsJSONByteConverter_STRING_INDICATOR:
      length = [bytes getInt];
      stringBytes = [IOSByteArray arrayWithLength:length];
      [bytes getWithByteArray:stringBytes withInt:0 withInt:length];
      return [NSString java_stringWithBytes:stringBytes];
      case EduUmassCsGnscommonUtilsJSONByteConverter_INTEGER_INDICATOR:
      return JavaLangInteger_valueOfWithInt_([bytes getInt]);
      case EduUmassCsGnscommonUtilsJSONByteConverter_LONG_INDICATOR:
      return JavaLangLong_valueOfWithLong_([bytes getLong]);
      case EduUmassCsGnscommonUtilsJSONByteConverter_DOUBLE_INDICATOR:
      return JavaLangDouble_valueOfWithDouble_([bytes getDouble]);
      case EduUmassCsGnscommonUtilsJSONByteConverter_FLOAT_INDICATOR:
      return JavaLangFloat_valueOfWithFloat_([bytes getFloat]);
      case EduUmassCsGnscommonUtilsJSONByteConverter_BOOLEAN_INDICATOR:
      return JavaLangInteger_valueOfWithInt_([bytes get] == 1 ? 1 : 0);
      default:
      @throw create_OrgJsonJSONException_initWithNSString_(@"Tried to decode unknown type from byte array!");
    }
  }
}

OrgJsonJSONObject *EduUmassCsGnscommonUtilsJSONByteConverter_mapFromBytesWithJavaNioByteBuffer_(JavaNioByteBuffer *bytes) {
  EduUmassCsGnscommonUtilsJSONByteConverter_initialize();
  OrgJsonJSONObject *json = create_OrgJsonJSONObject_init();
  jint length = [((JavaNioByteBuffer *) nil_chk(bytes)) getInt];
  for (jint i = 0; i < length; i++) {
    jbyte type = [bytes get];
    jint lengthKey = [bytes getInt];
    IOSByteArray *stringBytes = [IOSByteArray arrayWithLength:lengthKey];
    [bytes getWithByteArray:stringBytes withInt:0 withInt:lengthKey];
    NSString *key = [NSString java_stringWithBytes:stringBytes];
    type = [bytes get];
    {
      jint lengthString;
      switch (type) {
        case EduUmassCsGnscommonUtilsJSONByteConverter_MAP_INDICATOR:
        [json putWithNSString:key withId:EduUmassCsGnscommonUtilsJSONByteConverter_mapFromBytesWithJavaNioByteBuffer_(bytes)];
        break;
        case EduUmassCsGnscommonUtilsJSONByteConverter_ARRAY_INDICATOR:
        [json putWithNSString:key withId:EduUmassCsGnscommonUtilsJSONByteConverter_arrayFromBytesWithJavaNioByteBuffer_(bytes)];
        break;
        case EduUmassCsGnscommonUtilsJSONByteConverter_STRING_INDICATOR:
        lengthString = [bytes getInt];
        stringBytes = [IOSByteArray arrayWithLength:lengthString];
        [bytes getWithByteArray:stringBytes withInt:0 withInt:lengthString];
        [json putWithNSString:key withId:[NSString java_stringWithBytes:stringBytes]];
        break;
        case EduUmassCsGnscommonUtilsJSONByteConverter_INTEGER_INDICATOR:
        [json putWithNSString:key withInt:[bytes getInt]];
        break;
        case EduUmassCsGnscommonUtilsJSONByteConverter_LONG_INDICATOR:
        [json putWithNSString:key withLong:[bytes getLong]];
        break;
        case EduUmassCsGnscommonUtilsJSONByteConverter_DOUBLE_INDICATOR:
        [json putWithNSString:key withDouble:[bytes getDouble]];
        break;
        case EduUmassCsGnscommonUtilsJSONByteConverter_FLOAT_INDICATOR:
        [json putWithNSString:key withDouble:[bytes getFloat]];
        break;
        default:
        @throw create_OrgJsonJSONException_initWithNSString_(@"Tried to decode unknown type from byte array!");
      }
    }
  }
  return json;
}

OrgJsonJSONArray *EduUmassCsGnscommonUtilsJSONByteConverter_arrayFromBytesWithJavaNioByteBuffer_(JavaNioByteBuffer *bytes) {
  EduUmassCsGnscommonUtilsJSONByteConverter_initialize();
  OrgJsonJSONArray *json = create_OrgJsonJSONArray_init();
  jint length = [((JavaNioByteBuffer *) nil_chk(bytes)) getInt];
  for (jint i = 0; i < length; i++) {
    jbyte type = [bytes get];
    {
      jint lengthString;
      IOSByteArray *stringBytes;
      switch (type) {
        case EduUmassCsGnscommonUtilsJSONByteConverter_MAP_INDICATOR:
        [json putWithId:EduUmassCsGnscommonUtilsJSONByteConverter_mapFromBytesWithJavaNioByteBuffer_(bytes)];
        break;
        case EduUmassCsGnscommonUtilsJSONByteConverter_ARRAY_INDICATOR:
        [json putWithId:EduUmassCsGnscommonUtilsJSONByteConverter_arrayFromBytesWithJavaNioByteBuffer_(bytes)];
        break;
        case EduUmassCsGnscommonUtilsJSONByteConverter_STRING_INDICATOR:
        lengthString = [bytes getInt];
        stringBytes = [IOSByteArray arrayWithLength:lengthString];
        [bytes getWithByteArray:stringBytes withInt:0 withInt:lengthString];
        [json putWithId:[NSString java_stringWithBytes:stringBytes]];
        break;
        case EduUmassCsGnscommonUtilsJSONByteConverter_INTEGER_INDICATOR:
        [json putWithInt:[bytes getInt]];
        break;
        case EduUmassCsGnscommonUtilsJSONByteConverter_LONG_INDICATOR:
        [json putWithLong:[bytes getLong]];
        break;
        case EduUmassCsGnscommonUtilsJSONByteConverter_DOUBLE_INDICATOR:
        [json putWithDouble:[bytes getDouble]];
        break;
        case EduUmassCsGnscommonUtilsJSONByteConverter_FLOAT_INDICATOR:
        [json putWithDouble:[bytes getFloat]];
        break;
        default:
        @throw create_OrgJsonJSONException_initWithNSString_(@"Tried to decode unknown type from byte array!");
      }
    }
  }
  return json;
}

OrgJsonJSONObject *EduUmassCsGnscommonUtilsJSONByteConverter_fromBytesHardcodedWithByteArray_(IOSByteArray *bytes) {
  EduUmassCsGnscommonUtilsJSONByteConverter_initialize();
  JavaNioByteBuffer *byteBuffer = JavaNioByteBuffer_wrapWithByteArray_(bytes);
  OrgJsonJSONObject *obj = (OrgJsonJSONObject *) cast_chk(EduUmassCsGnscommonUtilsJSONByteConverter_valueFromBytesWithJavaNioByteBuffer_(byteBuffer), [OrgJsonJSONObject class]);
  return obj;
}

OrgJsonJSONObject *EduUmassCsGnscommonUtilsJSONByteConverter_fromBytesHardcodedWithJavaNioByteBuffer_(JavaNioByteBuffer *bbuf) {
  EduUmassCsGnscommonUtilsJSONByteConverter_initialize();
  return (OrgJsonJSONObject *) cast_chk(EduUmassCsGnscommonUtilsJSONByteConverter_valueFromBytesWithJavaNioByteBuffer_(bbuf), [OrgJsonJSONObject class]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EduUmassCsGnscommonUtilsJSONByteConverter)