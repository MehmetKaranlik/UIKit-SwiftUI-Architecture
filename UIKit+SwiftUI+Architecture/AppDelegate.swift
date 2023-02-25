//
//  AppDelegate.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import UIKit
import DesignKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      ProductInitialize.initialize()
      return true
   }

   // MARK: UISceneSession Lifecycle

   func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
      return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
   }

   func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {}
}
