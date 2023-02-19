//
//  SearchViewController.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation


import UIKit


class SearchViewController : UIViewController {
      // MARK:  properties
   let searchView = SearchView()

      // MARK: Lifecyle


      // MARK: Selectors

   override func viewDidLoad() {
      super.viewDidLoad()
      let hosted = searchView.toHostingController()
      hosted.addToVC(target: self)

   }

      // MARK:  Makers

}

