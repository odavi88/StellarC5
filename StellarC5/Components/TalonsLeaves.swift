//
//  TalonsLeaves.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/28/23.
//

import SwiftUI

struct TalonsLeaves: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack(spacing: -1) {
            HStack(spacing: 0) {
                // MARK: Left Leaf Graphic
                Image("leafLeft")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
                    .frame(width: 130, height: 100)

                // MARK: LunarRitual Space
                
                            Image("waxing crescent")
                    .resizable()
                    .scaledToFit()
                                .font(.largeTitle)
                                .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
                                .frame(width: 80, height: 80)
                
      // MARK: Right Leaf Graphic
                
                Image("leafRight")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
                    .frame(width: 130, height: 100)
                
              
                
            }
            
            Text("MAR 30")
                .font(.custom("Red Moon Rising", size: 38))
                .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
        }
    }
}

struct TalonsLeaves_Previews: PreviewProvider {
    static var previews: some View {
        TalonsLeaves()
    }
}
