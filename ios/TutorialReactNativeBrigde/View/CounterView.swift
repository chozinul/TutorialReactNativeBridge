//
//  CounterView.swift
//  TutorialReactNativeBrigde
//
//  Created by Muchamad Chozinul Amri on 27/4/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit
class CounterView: UIView {
  
  @objc var count = 0 {
    didSet {
      button.setTitle(String(describing: count), for: .normal)
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.addSubview(button)
    increment()
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
      action: #selector(increment),
      for: .touchUpInside
    )
    return b
  }()
  
  @objc func increment() {
    count += 1
  }
}
