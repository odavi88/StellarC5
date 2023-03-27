//
//  ContentView.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var userIsLoggedIn = false
    
    var body: some View {
        
        userIsLoggedIn ? AnyView(MainTabView()) : AnyView(LoginView())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
