//
//  DarkModeColorChangeTest.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/27/23.
//

import SwiftUI

struct DarkModeColorChangeTest: View {
     @State var darkModeTextOn = true
     @State var darkModeCircleOn = true
    @State var backgroundColorIsDark = true
    
    var colorScheme: ColorScheme
    
    
    var body: some View {
        
        VStack {
            Text(colorScheme == .dark ? "Dark" : "Light")
        }
        
    }
}

struct DarkModeColorChangeTest_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeColorChangeTest(colorScheme: .dark)
    }
}
