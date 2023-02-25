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

   var loginView = LoginView()


   override func viewDidLoad() {
      super.viewDidLoad()
      loginView.delegate = self
      let hostedView = loginView.toHostingController()
      hostedView.addToVC(target: self)
      setNavigationTitle("login",prefersLargeTitle: true)

   }
}

extension LoginViewController : LoginDelegate {
   func didTapNext() {
      replaceRoot(MainTabController())
   }


}

