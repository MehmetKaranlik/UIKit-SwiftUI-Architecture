//
//  IExampleService.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 26.02.2023.
//

import Foundation
import NetworkManagerPackage


protocol IExampleService {
   var manager :  NetworkManager<BaseErrorModel> { get set }

   func exampleFunc() async
}
