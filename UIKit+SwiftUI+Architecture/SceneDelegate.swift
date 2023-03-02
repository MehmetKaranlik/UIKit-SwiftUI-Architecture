//
//  SceneDelegate.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import UIKit
import Core

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
   var window: UIWindow?

   func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
      guard let scene = (scene as? UIWindowScene) else { return }
      window = UIWindow(windowScene: scene)
      window?.rootViewController = ExampleTabViewController().wrapNavigationController()
      window?.makeKeyAndVisible()
   }

   func sceneDidDisconnect(_ scene: UIScene) {}

   func sceneDidBecomeActive(_ scene: UIScene) {}

   func sceneWillResignActive(_ scene: UIScene) {}

   func sceneWillEnterForeground(_ scene: UIScene) {}

   func sceneDidEnterBackground(_ scene: UIScene) {}
}
