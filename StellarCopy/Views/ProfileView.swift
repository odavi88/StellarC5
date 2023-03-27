//
//  ProfileView.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/27/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack {
            Text("Welcome 'Username'")
            Image(systemName: "circle.circle").font(.largeTitle)
            Image(systemName: "moon.fill")
            Text("Horoscope description")
        }
        
      
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
