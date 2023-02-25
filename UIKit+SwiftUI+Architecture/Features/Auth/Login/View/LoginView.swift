//
//  LoginView.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import SwiftUI
import DesignKit

protocol LoginDelegate {
   func didTapNext()
}

struct LoginView: View {

   var delegate : LoginDelegate?

    var body: some View {
       ScrollView {
          ProductText.largeTitle("a")
       }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
