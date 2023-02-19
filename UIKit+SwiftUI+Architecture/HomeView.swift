//
//  HomeView.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
       ZStack {
          Rectangle()
             .fill(Color.yellow.gradient)
          Text("HomeView")
       }
 
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
