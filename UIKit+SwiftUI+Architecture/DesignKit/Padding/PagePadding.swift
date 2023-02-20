//
//  PagePadding.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation
import SwiftUI

protocol EdgeInsetsTypes {

   var size: AppSizes { get set }
   var xxSmall: EdgeInsets { get }
   var xSmall: EdgeInsets { get }
   var standart: EdgeInsets { get }
   var small: EdgeInsets { get }
   var medium: EdgeInsets { get }
   var large: EdgeInsets { get }
   var xLarge: EdgeInsets { get }
   var xxLarge: EdgeInsets { get }
}

struct PagePadding {
   private let size: AppSizes? = DesignKit.shared.appSizes

   lazy var all = All(size: self.size!)
   lazy var horizontal = Horizontal(size: self.size!)

   init() {
      assert(size != nil, "DesignKit has not been initialized")
   }

   enum Custom {
      case all(value: CGFloat)
      case vertical(value: CGFloat)
      case horizontal(value: CGFloat)
      case left(value: CGFloat)
      case right(value: CGFloat)
      case top(value: CGFloat)
      case bottom(value: CGFloat)
   }
}

 struct All: EdgeInsetsTypes {
   var xxSmall: EdgeInsets {
      return EdgeInsets(top: size.xxSmall, leading: size.xxSmall, bottom: size.xxSmall, trailing: size.xxSmall)
   }

   var xSmall: EdgeInsets {
      return EdgeInsets(top: size.xSmall, leading: size.xSmall, bottom: size.xSmall, trailing: size.xSmall)
   }

   var standart: EdgeInsets {
      return EdgeInsets(top: size.standart, leading: size.standart, bottom: size.standart, trailing: size.standart)
   }

   var small: EdgeInsets {
      return EdgeInsets(top: size.small, leading: size.small, bottom: size.small, trailing: size.small)
   }

   var medium: EdgeInsets {
      return EdgeInsets(top: size.medium, leading: size.medium, bottom: size.medium, trailing: size.medium)
   }

   var large: EdgeInsets {
      return EdgeInsets(top: size.large, leading: size.large, bottom: size.large, trailing: size.large)
   }

   var xLarge: EdgeInsets {
      return EdgeInsets(top: size.xLarge, leading: size.xLarge, bottom: size.xLarge, trailing: size.xLarge)
   }

   var xxLarge: EdgeInsets {
      return EdgeInsets(top: size.xxLarge, leading: size.xxLarge, bottom: size.xxLarge, trailing: size.xxLarge)
   }

   var size: AppSizes

   mutating func setSize(_ size: any AppSizes) {
      self.size = size
   }
}

 struct Horizontal: EdgeInsetsTypes {
   mutating func setSize(_ size: AppSizes) {
      self.size = size
   }

   var size: AppSizes

    var xxSmall: EdgeInsets {
       return EdgeInsets(top: 0, leading: size.xxSmall, bottom: 0, trailing: size.xxSmall)
    }

    var xSmall: EdgeInsets {
       return EdgeInsets(top: 0, leading: size.xSmall, bottom: 0, trailing: size.xSmall)
    }

    var standart: EdgeInsets {
       return EdgeInsets(top: 0, leading: size.standart, bottom: 0, trailing: size.standart)
    }

    var small: EdgeInsets {
       return EdgeInsets(top: 0, leading: size.small, bottom: 0, trailing: size.small)
    }

    var medium: EdgeInsets {
       return EdgeInsets(top: 0, leading: size.medium, bottom: 0, trailing: size.medium)
    }

    var large: EdgeInsets {
       return EdgeInsets(top: 0, leading: size.large, bottom: 0, trailing: size.large)
    }

    var xLarge: EdgeInsets {
       return EdgeInsets(top: 0, leading: size.xLarge, bottom: 0, trailing: size.xLarge)
    }

    var xxLarge: EdgeInsets {
       return EdgeInsets(top: 0, leading: size.xxLarge, bottom: 0, trailing: size.xxLarge)
    }
}

 struct Vertical: EdgeInsetsTypes {


   var size: AppSizes

    var xxSmall: EdgeInsets {
       return EdgeInsets(top: size.xxSmall, leading: 0, bottom: size.xxSmall, trailing: 0)
    }

    var xSmall: EdgeInsets {
       return EdgeInsets(top: size.xSmall, leading: 0, bottom: size.xSmall, trailing: 0)
    }

    var standart: EdgeInsets {
       return EdgeInsets(top: size.standart, leading: 0, bottom: size.standart, trailing: 0)
    }

    var small: EdgeInsets{
       return EdgeInsets(top: size.small, leading: 0, bottom: size.small, trailing: 0)
    }

    var medium: EdgeInsets{
       return EdgeInsets(top: size.medium, leading: 0, bottom: size.medium, trailing: 0)
    }

    var large: EdgeInsets{
       return EdgeInsets(top: size.large, leading: 0, bottom: size.large, trailing: 0)
    }

    var xLarge: EdgeInsets{
       return EdgeInsets(top: size.xLarge, leading: 0, bottom: size.xLarge, trailing: 0)
    }

    var xxLarge: EdgeInsets{
       return EdgeInsets(top: size.xxLarge, leading: 0, bottom: size.xxLarge, trailing: 0)
    }
}

 struct Left: EdgeInsetsTypes {
   mutating func setSize(_ size: AppSizes) {
      self.size = size
   }

   var size: AppSizes

   var xxSmall: EdgeInsets

   var xSmall: EdgeInsets

   var standart: EdgeInsets

   var small: EdgeInsets

   var medium: EdgeInsets

   var large: EdgeInsets

   var xLarge: EdgeInsets

   var xxLarge: EdgeInsets
}

 struct Right: EdgeInsetsTypes {


   var size: AppSizes

   var xxSmall: EdgeInsets

   var xSmall: EdgeInsets

   var standart: EdgeInsets

   var small: EdgeInsets

   var medium: EdgeInsets

   var large: EdgeInsets

   var xLarge: EdgeInsets

   var xxLarge: EdgeInsets
}
