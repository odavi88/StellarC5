//
//  ChartView.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/29/23.
//

import SwiftUI

struct ChartView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var horoscopeTextRecIsDark = false
    
    var astroChart = [
        
        Chart(subSignIcon: "sun.max.fill", zodiacSign: "Turaus", infoIcon: "info.circle.fill", houses: 1),
        Chart(subSignIcon: "moon", zodiacSign: "Virgo", infoIcon: "info.circle.fill", houses: 1),
        Chart(subSignIcon: "arrow.up", zodiacSign: "Leo", infoIcon: "info.circle.fill", houses: 1)
        
    ]
    
    var body: some View {
        // MARK: Research ScrollViewReader to Make Chart Buttons Auto Scroll to Right Info Box
        ScrollView(showsIndicators: false) {
            VStack {
                Text("The Trio")
                    .font(.custom("Red Moon Rising", size: 38))
                
                
                ForEach(astroChart) { index in
                    HStack(spacing: 0) {
                        Image(systemName: index.subSignIcon)
                            .padding(.trailing)
                            .padding(.leading, 5)
                        Text(index.zodiacSign)
                            .font(.custom("Red Moon Rising", size: 28))
                            .padding()
                        Spacer()
                        Image(systemName: index.infoIcon ?? "bell.fill")
                            .padding()
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .stroke(lineWidth: 2)
                            .foregroundColor(Color(hue: 0.118, saturation: 0.62, brightness: 0.908))
                            .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
                    )
                    //                .padding(30)
                    
                    .font(.custom("Hubballi-Regular", size: 21))
                    .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
//                    .background(
//                        RoundedRectangle(cornerRadius: 10)
//                            .stroke()
//                    )
                }
                
                VStack(spacing: -10) {
                    Text("Ruling Planet")
                        .padding()
                        .padding(.top)
                        .font(.custom("Red Moon Rising", size: 38))
                     Image("marsPic")
                     .resizable()
                     .scaledToFit()
                     .frame(width: 50, height: 50)
                    HStack {
                        Image("leafLeft")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        Image("leafRight")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    }
                }
                
//                MARK: HOUSES
                VStack(spacing: 1) {
                    Text("Houses")
                        .font(.custom("Red Moon Rising", size: 38))
                        .padding(.top)
                    ChartInfoView()
                }
                
                HouseInfoView()
                    .padding(.top, 60)
                
                
            }
            .padding()
            .font(.custom("Hubballi-Regular", size: 21))
            .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
//            .padding(30)
        }
    }
    
    
    
    
    //                .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
    //
}




struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
