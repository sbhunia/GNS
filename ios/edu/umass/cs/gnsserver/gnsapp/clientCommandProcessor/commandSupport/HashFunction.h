//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../src/edu/umass/cs/gnsserver/gnsapp/clientCommandProcessor/commandSupport/HashFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction")
#ifdef RESTRICT_EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction
#define INCLUDE_ALL_EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction 0
#else
#define INCLUDE_ALL_EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction 1
#endif
#undef RESTRICT_EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction

#if !defined (EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction_) && (INCLUDE_ALL_EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction || defined(INCLUDE_EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction))
#define EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction_

@class IOSByteArray;

@protocol EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction < JavaObject >

- (IOSByteArray *)hash__WithNSString:(NSString *)key;

- (jlong)hashToLongWithNSString:(NSString *)key;

@end

J2OBJC_EMPTY_STATIC_INIT(EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction)

J2OBJC_TYPE_LITERAL_HEADER(EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction)

#endif

#pragma pop_macro("INCLUDE_ALL_EduUmassCsGnsserverGnsappClientCommandProcessorCommandSupportHashFunction")