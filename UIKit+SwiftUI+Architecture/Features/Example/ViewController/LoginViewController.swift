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

   let pageTitle : String?

   init( pageTitle: String?=nil) {
      self.pageTitle = pageTitle
      super.init(nibName: nil, bundle: nil)
   }

   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }

   override func viewDidLoad() {
      super.viewDidLoad()
      loginView.delegate = self
      let hostedView = loginView.toHostingController()
      hostedView.addToVC(target: self)
      setNavigationTitle(pageTitle ?? "Example",prefersLargeTitle: true)

   }
}

extension ExampleViewController : ExampleDelegate {
   func didTapNext() {
      // SwiftUI view and UIkit coordination that relies on Protocol & Delegate pattern
   }


}

