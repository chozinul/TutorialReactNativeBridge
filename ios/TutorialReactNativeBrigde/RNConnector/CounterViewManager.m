//
//  CounterViewManager.m
//  TutorialReactNativeBrigde
//
//  Created by Muchamad Chozinul Amri on 27/4/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "React/RCTViewManager.h"

@interface RCT_EXTERN_MODULE(CounterViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(count, NSNumber)

RCT_EXPORT_VIEW_PROPERTY(onClick, RCTDirectEventBlock)

RCT_EXTERN_METHOD(
                  updateFromManager:(nonnull NSNumber *)node
                  count:(nonnull NSNumber *)count
                  )

@end
