//
//  DailyHoroscopeTextView.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/28/23.
//

import SwiftUI

struct DailyHoroscopeTextView: View {
    @State private var horoscopeTextRecIsDark = false
    @Environment(\.colorScheme) var colorScheme
    //    @State private var horoTextColorIsGold = false
    var body: some View {

        VStack {
            StellarTitleView()
                .padding(.bottom, 15)
            GoldBarView()
                .padding(.bottom)
            TalonsLeaves()
            VStack {
               
                Text("Daily Horoscope")
                    .font(.custom("Hubballi-Regular", size: 27))
                    .padding(.top, 23)
                    .padding(.bottom, 23)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .padding()
                   
                
                HoroscopeIconButtons()
                    .padding()
                    .padding(.bottom, 38)
            }
            .font(.custom("Hubballi-Regular", size: 21))
        .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
            .background(
                RoundedRectangle(cornerRadius: 10)
                .foregroundColor(horoscopeTextRecIsDark ? Color(uiColor: .systemGray) : Color(uiColor: .systemGray6))
        )
        }
//        .padding()
        
    }
}

struct DailyHoroscopeTextView_Previews: PreviewProvider {
    static var previews: some View {
        DailyHoroscopeTextView()
    }
}
