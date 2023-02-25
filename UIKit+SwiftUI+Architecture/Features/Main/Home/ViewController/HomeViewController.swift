//
//  HomeViewController.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation


import UIKit


class HomeViewController : UIViewController {
   let homeView = HomeView()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      let hosted = homeView.toHostingController()
      hosted.addToVC(target: self)
      setNavigationTitle("home",prefersLargeTitle: false)
   }

      // MARK:  Makers



}

