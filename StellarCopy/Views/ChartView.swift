//
//  ChartView.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/27/23.
//

import SwiftUI

struct ChartView: View {
    @EnvironmentObject var userViewModel: UserViewModel

    var body: some View {
        Text("Chart View")
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()            .environmentObject(UserViewModel())

    }
}
