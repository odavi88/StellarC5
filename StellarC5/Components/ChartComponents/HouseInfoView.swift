//
//  HouseInfoView.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/30/23.
//

import SwiftUI

struct HouseInfoView: View {
    var horoInfo = [
        HoroscopeInfo(image: "taurus", house: .house1, sign: "Taurus")
    ]
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(horoInfo) { index in
                HStack {
                    Image(index.image)
                        .resizable()
                        .scaledToFit()
                    //                                .padding(25)
                        .padding(.trailing, 0)
                    //                        .padding(.bottom, 70)
                    //                        .frame(width: 50, height: 50)
                    
                    
                    VStack {
                        Text("\(index.house.rawValue)")
                        Text("In \(index.sign)")
                    }
                    .padding()
                    .font(.custom("Hubballi-Regular", size: 27))
                    .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
                }
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2)
            )
        .foregroundColor(Color(hue: 0.118, saturation: 0.62, brightness: 0.908))
            
            //                .padding()
        }
        
    }
    //            .padding()
}


struct HouseInfoView_Previews: PreviewProvider {
    static var previews: some View {
        HouseInfoView()
    }
}
