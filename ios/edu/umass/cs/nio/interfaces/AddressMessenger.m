//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/nio/interfaces/AddressMessenger.java
//

#include "J2ObjC_source.h"
#include "edu/umass/cs/nio/interfaces/AddressMessenger.h"

@interface EduUmassCsNioInterfacesAddressMessenger : NSObject

@end

@implementation EduUmassCsNioInterfacesAddressMessenger

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x401, 0, 1, 2, 3, -1, -1 },
    { NULL, "I", 0x401, 0, 4, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(sendToAddressWithJavaNetInetSocketAddress:withId:);
  methods[1].selector = @selector(sendToAddressWithJavaNetInetSocketAddress:withByteArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "sendToAddress", "LJavaNetInetSocketAddress;LNSObject;", "LJavaIoIOException;", "(Ljava/net/InetSocketAddress;TMessageType;)I", "LJavaNetInetSocketAddress;[B", "<MessageType:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _EduUmassCsNioInterfacesAddressMessenger = { "AddressMessenger", "edu.umass.cs.nio.interfaces", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, 5, -1 };
  return &_EduUmassCsNioInterfacesAddressMessenger;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(EduUmassCsNioInterfacesAddressMessenger)