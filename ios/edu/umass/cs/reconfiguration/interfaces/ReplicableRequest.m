//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/reconfiguration/interfaces/ReplicableRequest.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "edu/umass/cs/reconfiguration/interfaces/ReplicableRequest.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"

@interface EduUmassCsReconfigurationInterfacesReplicableRequest : NSObject

@end

__attribute__((unused)) static IOSObjectArray *EduUmassCsReconfigurationInterfacesReplicableRequest__Annotations$0();

@implementation EduUmassCsReconfigurationInterfacesReplicableRequest

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, 2, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(needsCoordination);
  methods[1].selector = @selector(setNeedsCoordinationWithBoolean:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setNeedsCoordination", "Z", (void *)&EduUmassCsReconfigurationInterfacesReplicableRequest__Annotations$0 };
  static const J2ObjcClassInfo _EduUmassCsReconfigurationInterfacesReplicableRequest = { "ReplicableRequest", "edu.umass.cs.reconfiguration.interfaces", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_EduUmassCsReconfigurationInterfacesReplicableRequest;
}

@end

void EduUmassCsReconfigurationInterfacesReplicableRequest_setNeedsCoordinationWithBoolean_(id<EduUmassCsReconfigurationInterfacesReplicableRequest> self, jboolean b) {
}

IOSObjectArray *EduUmassCsReconfigurationInterfacesReplicableRequest__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(EduUmassCsReconfigurationInterfacesReplicableRequest)