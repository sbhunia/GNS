//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../gig_ios/src/edu/umass/cs/nio/interfaces/SSLMessenger.java
//

#include "J2ObjC_source.h"
#include "edu/umass/cs/nio/interfaces/SSLMessenger.h"

@interface EduUmassCsNioInterfacesSSLMessenger : NSObject

@end

@implementation EduUmassCsNioInterfacesSSLMessenger

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LEduUmassCsNioInterfacesAddressMessenger;", 0x401, -1, -1, -1, 0, -1, -1 },
    { NULL, "V", 0x401, 1, 2, -1, 3, -1, -1 },
    { NULL, "V", 0x401, 4, 2, -1, 3, -1, -1 },
    { NULL, "LEduUmassCsNioInterfacesAddressMessenger;", 0x401, -1, -1, -1, 0, -1, -1 },
    { NULL, "LEduUmassCsNioInterfacesAddressMessenger;", 0x401, 5, 6, -1, 7, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getClientMessenger);
  methods[1].selector = @selector(setClientMessengerWithEduUmassCsNioInterfacesAddressMessenger:);
  methods[2].selector = @selector(setSSLClientMessengerWithEduUmassCsNioInterfacesAddressMessenger:);
  methods[3].selector = @selector(getSSLClientMessenger);
  methods[4].selector = @selector(getClientMessengerWithJavaNetInetSocketAddress:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Ledu/umass/cs/nio/interfaces/AddressMessenger<TMessageType;>;", "setClientMessenger", "LEduUmassCsNioInterfacesAddressMessenger;", "(Ledu/umass/cs/nio/interfaces/AddressMessenger<*>;)V", "setSSLClientMessenger", "getClientMessenger", "LJavaNetInetSocketAddress;", "(Ljava/net/InetSocketAddress;)Ledu/umass/cs/nio/interfaces/AddressMessenger<TMessageType;>;", "<NodeIDType:Ljava/lang/Object;MessageType:Ljava/lang/Object;>Ljava/lang/Object;Ledu/umass/cs/nio/interfaces/Messenger<TNodeIDType;TMessageType;>;" };
  static const J2ObjcClassInfo _EduUmassCsNioInterfacesSSLMessenger = { "SSLMessenger", "edu.umass.cs.nio.interfaces", ptrTable, methods, NULL, 7, 0x609, 5, 0, -1, -1, -1, 8, -1 };
  return &_EduUmassCsNioInterfacesSSLMessenger;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(EduUmassCsNioInterfacesSSLMessenger)