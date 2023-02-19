//
//  MainTabController.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation


import UIKit


class MainTabController : UITabBarController {

   override func viewDidLoad() {
      super.viewDidLoad()
      setViewControllers(DataProvider.items, animated: true)
   }
}




private final class DataProvider {
   static let items : [UIViewController] = [
      HomeViewController()
         .wrapNavigationController()
         .withTabBarItem(UITabBarItem(tabBarSystemItem: .recents, tag: 0)),
      SearchViewController()
         .wrapNavigationController()
         .withTabBarItem(UITabBarItem(tabBarSystemItem: .search, tag: 1))
   ]
}
