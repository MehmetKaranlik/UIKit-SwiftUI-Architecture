//
//  UIHostingController+Extensions.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation
import SwiftUI

extension UIHostingController {

   func addToVC(target : UIViewController) -> Void {
      target.addChild(self)
      self.view.frame = target.view.frame
      target.view.addSubview(self.view)
      self.didMove(toParent: target)
   }

}
