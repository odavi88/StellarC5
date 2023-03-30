//
//  infoInputTextFields.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/28/23.
//

import SwiftUI

struct infoInputTextFields: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var infoInput = ""
    var body: some View {
        TextField("", text: $infoInput)
            .padding(.vertical, 20)
            .padding(.horizontal, 55)
            .background(
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .stroke(lineWidth: 2)
                    .padding(.horizontal, 46)
                    .shadow(radius: 1)
                    
                    
                    .foregroundColor(Color(hue: 0.118, saturation: 0.62, brightness: 0.908))
                
            )
            .padding(.horizontal, 25)
    }
}

struct infoInputTextFields_Previews: PreviewProvider {
    static var previews: some View {
        infoInputTextFields()
    }
}
