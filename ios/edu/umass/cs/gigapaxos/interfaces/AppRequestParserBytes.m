//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/gigapaxos/interfaces/AppRequestParserBytes.java
//

#include "J2ObjC_source.h"
#include "edu/umass/cs/gigapaxos/interfaces/AppRequestParserBytes.h"

@interface EduUmassCsGigapaxosInterfacesAppRequestParserBytes : NSObject

@end

@implementation EduUmassCsGigapaxosInterfacesAppRequestParserBytes

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LEduUmassCsGigapaxosInterfacesRequest;", 0x401, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getRequestWithByteArray:withEduUmassCsNioNioutilsNIOHeader:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getRequest", "[BLEduUmassCsNioNioutilsNIOHeader;", "LEduUmassCsReconfigurationReconfigurationutilsRequestParseException;" };
  static const J2ObjcClassInfo _EduUmassCsGigapaxosInterfacesAppRequestParserBytes = { "AppRequestParserBytes", "edu.umass.cs.gigapaxos.interfaces", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, -1, -1 };
  return &_EduUmassCsGigapaxosInterfacesAppRequestParserBytes;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(EduUmassCsGigapaxosInterfacesAppRequestParserBytes)