//
//  LoginView.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import SwiftUI

protocol LoginDelegate {
   func didTapNext()
}

struct LoginView: View {

   var delegate : LoginDelegate?

 
   
    var body: some View {
       ScrollView {
          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
             .onTapGesture {
                delegate?.didTapNext()
             }
       }

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
