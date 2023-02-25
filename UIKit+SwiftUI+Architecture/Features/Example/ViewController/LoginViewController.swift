//
//  LoginViewController.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation
import UIKit
import SwiftUI


class ExampleViewController : UIViewController {

   var loginView = ExampleView()


   override func viewDidLoad() {
      super.viewDidLoad()
      loginView.delegate = self
      let hostedView = loginView.toHostingController()
      hostedView.addToVC(target: self)
      setNavigationTitle("login",prefersLargeTitle: true)

   }
}

extension ExampleViewController : ExampleDelegate {
   func didTapNext() {
      // SwiftUI view and UIkit coordination that relies on Protocol & Delegate pattern
   }


}

