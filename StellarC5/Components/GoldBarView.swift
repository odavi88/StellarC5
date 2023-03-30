//
//  GoldBarView.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/28/23.
//

import SwiftUI

struct GoldBarView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
            .frame(width: 400, height: 5)
        
    }
}

struct GoldBarView_Previews: PreviewProvider {
    static var previews: some View {
        GoldBarView()
    }
}
