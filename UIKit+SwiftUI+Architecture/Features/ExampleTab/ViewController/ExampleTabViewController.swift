//
//  ExampleTabViewController.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 3.03.2023.
//

import Foundation


import UIKit
import SwiftUI
import Core

class ExampleTabViewController : UITabBarController {


   override func viewDidLoad() {

      super.viewDidLoad()
      setViewControllers(DataProvider.views.enumerated().map({ index, view in
         view
            .wrapNavigationController()
            .withTabBarItem(DataProvider.tabItems[index])
      }), animated: false)
   }

}



private struct DataProvider {
   static let views : [UIViewController] = [
      ExampleView().toHostingController(),
      ExampleView().toHostingController(),
   ]

   static let tabItems : [UITabBarItem] = [
      UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0),
      UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
   ]
}

