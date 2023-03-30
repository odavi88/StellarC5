//
//  CalendarView.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/27/23.
//

import SwiftUI

struct CalendarView: View {
    @EnvironmentObject var userViewModel: UserViewModel

    var body: some View {
        Text("Calendar View")
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()            .environmentObject(UserViewModel())

    }
}
