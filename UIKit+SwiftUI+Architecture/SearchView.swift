//
//  SearchView.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 20.02.2023.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
       ZStack {
          Rectangle()
             .fill(Color.green.gradient)
          Text("SearchView")
       }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
