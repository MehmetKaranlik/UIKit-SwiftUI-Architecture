//
//  Colors.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation
import SwiftUI



protocol AppColors {
   var primary : Color? { get set }
   var primaryVariant : Color?  { get set }
   var primaryContainer : Color? { get set }

   var secondary : Color?  { get set }
   var secondaryVariant :Color?  { get set }
   var secondaryContainer : Color?  { get set }

   var tertiary : Color?  { get set }
   var tertiaryVariant: Color?  { get set }
   var tertiaryContainer: Color? { get set }

   var surface : Color? { get set }
   var onSurface : Color? { get set }
}
