//
//  ProductNetworkManager.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import Foundation
import NetworkManagerPackage
import Core

struct ProductNetworkManager {

   let networkManager :  NetworkManager<BaseErrorModel>
   
   init() {
      self.networkManager = NetworkManager(
         options: NetworkingOption(
            baseUrl: "www.example.com",
            onRefresh: nil,
            onRefreshFail: nil,
            enableLogger: true,
            errorModel: BaseErrorModel.self,
            timeoutDuration: Durations.timeout.rawValue
         )
      )
   }
}
