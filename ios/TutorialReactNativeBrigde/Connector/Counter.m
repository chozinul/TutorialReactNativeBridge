#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(Counter, NSObject)

RCT_EXTERN_METHOD(increment)

RCT_EXTERN_METHOD(incrementEmit)

RCT_EXTERN_METHOD(getCount: (RCTResponseSenderBlock)callback)

RCT_EXTERN_METHOD(getObject: (RCTResponseSenderBlock)callback)


RCT_EXTERN_METHOD(
                  decrement: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

@end
