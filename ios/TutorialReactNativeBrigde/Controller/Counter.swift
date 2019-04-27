import Foundation

@objc(Counter)
class Counter: NSObject {

  @objc
  func constantsToExport() -> [AnyHashable : Any]! {
    return ["initialCount": 1]
  }
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}
