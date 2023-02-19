//
//  DesignKit.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation




struct DesignKit {


   static let shared  = DesignKit()

   var appColors : (any AppColors)? = nil

   var appSizes : (any AppSizes)? = nil



   private init(){}


   mutating func setColors( _ colors : any AppColors ){
      self.appColors = colors
   }

   mutating func setDesignSizes(_ sizes : any AppSizes ){
      self.appSizes = sizes
   }



}
