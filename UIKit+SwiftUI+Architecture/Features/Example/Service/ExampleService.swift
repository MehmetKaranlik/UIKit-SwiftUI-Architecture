//
//  ExampleService.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 26.02.2023.
//

import Foundation
import NetworkManagerPackage


struct ExampleService : IExampleService {


   var manager:  NetworkManager<BaseErrorModel>

   func exampleFunc() async  {
      let  _ = await manager.send(
         NetworkPaths.examplePath.rawValue,
         parseModel: ExampleModel.self,
         requestType: .GET
      )
   }

}


private enum NetworkPaths : String {
  case examplePath  = "/examplePath"
}
