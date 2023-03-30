//  ContentView.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/27/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userViewModel: UserViewModel

    @State private var userIsLoggedIn: Bool = false
    
    var body: some View {
        VStack {
            userIsLoggedIn ? AnyView(MainTabView()) : AnyView(LoginView(userIsLoggedIn: self.$userIsLoggedIn))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()            .environmentObject(UserViewModel())

    }
}
