//
//  Int+Extensions.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 25.02.2023.
//

import Foundation


extension Int {

   func next() -> Int {
      return self+1
   }

   func before() -> Int {
      return self-1
   }

   func isEqual(_ to : Int) -> Bool {
      return self == to
   }
}
