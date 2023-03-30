//
//  CareerHoro.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/30/23.
//

import SwiftUI

struct CareerHoro: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var horoscopeTextRecIsDark = false
    
    var body: some View {
        VStack {
            Text("Career and Wealth")
                .font(.custom("Hubballi-Regular", size: 27))
                .padding(.top, 23)
                .padding(.bottom, 23)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .padding()
                .font(.custom("Hubballi-Regular", size: 20))
        }
        .font(.custom("Hubballi-Regular", size: 21))
    .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
        .background(
            RoundedRectangle(cornerRadius: 10)
            .foregroundColor(horoscopeTextRecIsDark ? Color(uiColor: .systemGray) : Color(uiColor: .systemGray6))
                )
        .padding()    }
}

struct CareerHoro_Previews: PreviewProvider {
    static var previews: some View {
        CareerHoro()
    }
}
