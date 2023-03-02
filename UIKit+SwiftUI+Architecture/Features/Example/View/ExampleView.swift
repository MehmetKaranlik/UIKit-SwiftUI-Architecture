//
//  LoginView.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import SwiftUI
import DesignKit

protocol ExampleDelegate {
   func didTapNext()
}

struct ExampleView: View {
   let service : IExampleService
   let viewModel : ExampleViewModel
   var delegate : ExampleDelegate?

   init() {
      self.service = ExampleService(manager: ProductNetworkManager().networkManager)
      self.viewModel = ExampleViewModel(service: service)
   }

    var body: some View {

       VStack {
          ProductText.largeTitle("ExampleView")
          Spacer()
       }


    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
