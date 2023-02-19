//
//  LoginViewController.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation
import UIKit
import SwiftUI


class LoginViewController : UIViewController {
      // MARK:  properties
   var loginView = LoginView()

      // MARK: Lifecyle


      // MARK: Selectors



   override func viewDidLoad() {
      super.viewDidLoad()
      loginView.delegate = self

      let hostedView = loginView.toHostingController()

      hostedView.addToVC(target: self)

      setNavigationTitle("login",prefersLargeTitle: false)

      setNavigationBarButton(rightBarItems: [
         UIBarButtonItem(systemItem: .camera)
      ],isAnimated: true)

   }
}

extension LoginViewController : LoginDelegate {
   func didTapNext() {
      replaceRoot(MainTabController())
   }


}

