//
//  UIViewController+Extensions.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation
import UIKit

extension UIViewController {
   func wrapNavigationController() -> UINavigationController {
      return UINavigationController(rootViewController: self)
   }

   func replaceRoot(
      _ to: UIViewController,
      options: UIView.AnimationOptions = .transitionCrossDissolve
   ) {
      guard let window = view.window else { return }
      window.switchRootViewController(to)
   }


   func withTabBarItem(_ item : UITabBarItem) -> UIViewController {
      self.tabBarItem = item
      return self
   }
}
