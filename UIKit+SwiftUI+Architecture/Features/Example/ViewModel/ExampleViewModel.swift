//
//  ExampleViewModel.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 26.02.2023.
//

import Foundation
import NetworkManagerPackage

class ExampleViewModel : ObservableObject {
   let service : IExampleService

   init(service : IExampleService){
      self.service = service
   }


   func doSomeTask() {
      Task {
         await service.exampleFunc()
      }
   }
}
