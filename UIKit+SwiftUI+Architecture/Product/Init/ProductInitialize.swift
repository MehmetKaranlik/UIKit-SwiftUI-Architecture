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
      DesignKit.shared.setFonts(Fonts())
   }
}
