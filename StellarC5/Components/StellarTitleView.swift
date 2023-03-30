//
//  StellarTitleView.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/28/23.
//

import SwiftUI

struct StellarTitleView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        Text("Stellar")
            .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
            .font(.custom("Red Moon Rising", size: 42))
    }
}

struct StellarTitleView_Previews: PreviewProvider {
    static var previews: some View {
        StellarTitleView()
    }
}
