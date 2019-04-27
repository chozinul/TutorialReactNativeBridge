//
//  CounterViewManager.swift
//  TutorialReactNativeBrigde
//
//  Created by Muchamad Chozinul Amri on 27/4/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

@objc(CounterViewManager)
class CounterViewManager: RCTViewManager {
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override func view() -> UIView! {
    return CounterView()
  }
  
}
