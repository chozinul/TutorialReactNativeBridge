//
//  CounterView.swift
//  TutorialReactNativeBrigde
//
//  Created by Muchamad Chozinul Amri on 27/4/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit
class CounterView: UIView {
  
  private var count: NSNumber = 0 {
    didSet {
      button.setTitle(String(describing: count), for: .normal)
    }
  }
  
  @objc var onClick: RCTDirectEventBlock?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.addSubview(button)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  lazy var button: UIButton = {
    let b = UIButton.init(type: UIButton.ButtonType.system)
    b.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    b.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    b.addTarget(
      self,
      action: #selector(touchUpInside),
      for: .touchUpInside
    )
    return b
  }()
  
  @objc func setCount(_ val: NSNumber) {
    count = val
    
  }
  
  @objc func touchUpInside() {
      if onClick != nil {
        onClick!(["count": count])
      }
  }
  
  @objc func update(value: NSNumber) {
    count = value
  }
  
}
