//
//  View+Extensions.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation
import SwiftUI


extension View {
   func toHostingController() -> UIHostingController<Self> {
      return UIHostingController<Self>(rootView: self)
   }
}
