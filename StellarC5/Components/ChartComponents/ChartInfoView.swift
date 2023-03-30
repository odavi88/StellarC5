//
//  ChartInfoView.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/29/23.
//

import SwiftUI

struct ChartInfoView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var chartInfo = [

        ChartInfo(subSign: .sun, zSignImageName: "Turaus")

    ]
    
    var body: some View {
        VStack(alignment: .leading) {
                VStack {
                    Text("Each house has a primary sign and a ruling planet which determine the dominat energy for that part of your life.")
                        .font(.custom("Hubballi-Regular", size: 27))
                        .padding()
                }
            }
        .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
        .padding(.leading)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
        )
        .foregroundColor(Color(hue: 0.118, saturation: 0.62, brightness: 0.908))
        
//        .padding()
    }
}

struct ChartInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ChartInfoView()
    }
}
