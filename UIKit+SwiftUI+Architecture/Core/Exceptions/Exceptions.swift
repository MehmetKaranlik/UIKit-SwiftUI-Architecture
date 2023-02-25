//
//  Exceptions.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 25.02.2023.
//

import Foundation


enum Exceptions : Error {
   case notImplemented
   case runtime
   case unexpected(code : Int)
}
