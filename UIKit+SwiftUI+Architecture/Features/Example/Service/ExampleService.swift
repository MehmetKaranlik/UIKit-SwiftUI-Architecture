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
      let  result = await manager.send(
         NetworkPaths.examplePath.rawValue,
         parseModel: ExampleModel.self,
         requestType: .GET, body: nil,
         bodyType: .JSON,
         queryParameters: nil
      )
   }

}


private enum NetworkPaths : String {
  case examplePath  = "/examplePath"
}
