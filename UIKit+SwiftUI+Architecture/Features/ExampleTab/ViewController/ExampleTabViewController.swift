//
//  ExampleTabViewController.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 3.03.2023.
//

import Foundation

import Core
import SwiftUI
import UIKit

class ExampleTabViewController: UITabBarController {
   override func viewDidLoad() {
      super.viewDidLoad()
      setViewControllers(
         DataProvider.views.enumerated().map({ index, view in
            view
               .wrapNavigationController()
               .withTabBarItem(DataProvider.tabItems[index])
         }
         ), animated: false)
   }
}

private enum DataProvider {
   static let views: [UIViewController] = [
      ExampleViewController(pageTitle: "bookmarks"),
      ExampleViewController(pageTitle: "contacts"),
   ]

   static let tabItems: [UITabBarItem] = [
      UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0),
      UITabBarItem(tabBarSystemItem: .contacts, tag: 1),
   ]
}
