//
//  HoroscopeCalView.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/27/23.
//

import SwiftUI

struct HoroscopeCalView: View {
    @State private var date = Date()
    var body: some View {
        DatePicker("Graphic Date Picker", selection: $date, displayedComponents: .date).datePickerStyle((.graphical))
            .padding()
    }
}

struct HoroscopeCalView_Previews: PreviewProvider {
    static var previews: some View {
        HoroscopeCalView()
    }
}
