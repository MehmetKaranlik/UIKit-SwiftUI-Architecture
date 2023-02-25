//
//  ProductInitialize.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 25.02.2023.
//

import Foundation
import DesignKit


struct ProductInitialize {


   static func initialize() {
      /// If any feature that depends on these setters are used without setting it will give runtime error!
      DesignKit.shared.setFonts(Fonts())
      DesignKit.shared.setDesignSizes(Sizes())
      DesignKit.shared.setColors(Colors())
   }
}
