//
//  UIWindow+Extensions.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation
import UIKit

extension UIWindow {

   func switchRootViewController(_ viewController: UIViewController,
                                 animated: Bool = true,
                                 duration: TimeInterval = 0.35,
                                 options: AnimationOptions = .transitionCrossDissolve,
                                 completion: (() -> Void)? = nil) {
      guard animated else {
         rootViewController = viewController
         return
      }

      UIView.transition(with: self, duration: duration, options: options, animations: {
         let oldState = UIView.areAnimationsEnabled
         UIView.setAnimationsEnabled(false)
         self.rootViewController = viewController
         UIView.setAnimationsEnabled(oldState)
      }, completion: { _ in
         completion?()
      })
   }
}
