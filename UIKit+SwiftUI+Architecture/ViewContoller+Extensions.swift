//
//  ViewContoller+Extensions.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation
import UIKit

extension UIViewController {


   func configureNavigationBar(
      backgroundColor : UIColor = UIColor.white,
      largeTitleAttributes : [NSAttributedString.Key : Any] = [:],
      titleAttributes : [NSAttributedString.Key : Any] = [:]
   ) -> Void {
      let appareance = UINavigationBarAppearance()
      appareance.backgroundColor = backgroundColor
      appareance.largeTitleTextAttributes = largeTitleAttributes
      appareance.titleTextAttributes = titleAttributes
      
      self.navigationController?.navigationBar.compactAppearance = appareance
      self.navigationController?.navigationBar.standardAppearance = appareance
      self.navigationController?.navigationBar.scrollEdgeAppearance = appareance
      self.navigationController?.navigationBar.compactScrollEdgeAppearance = appareance

   }

   func setNavigationTitle(
      _ title :String,
      prefersLargeTitle : Bool = true,
      largeTitleAttributes : [NSAttributedString.Key : Any] = [:],
      titleAttributes : [NSAttributedString.Key : Any] = [:]
   ) {
      self.navigationItem.title = title
      self.navigationController?.navigationBar.prefersLargeTitles = prefersLargeTitle
      self.navigationController?.navigationBar.titleTextAttributes = titleAttributes
      self.navigationController?.navigationBar.largeTitleTextAttributes = largeTitleAttributes
   }


   func setNavigationBarButton(
      leftBarItems : [UIBarButtonItem] = [],
      rightBarItems : [UIBarButtonItem] = [],
      isAnimated : Bool = false
   ) -> Void {
      self.navigationItem.setLeftBarButtonItems(leftBarItems, animated: isAnimated)
      self.navigationItem.setRightBarButtonItems(rightBarItems, animated: isAnimated)
   }

}
