//
//  LunarEventCapsuleView.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/28/23.
//

import SwiftUI

var talonsIcons = ["1st quarter", "3rd quarter", "full", "new moon", "waning crescent", "waning gibbous", "waxing crescent", "waxing gibbous"]

struct LunarEventCapsuleView: View {
    
    @State private var horoscopeTextRecIsDark = false
    
    @Environment(\.colorScheme) var colorScheme
    
//    var talonsIcons = ["1st quarter", "3rd quarter", "full", "new moon", "waning crescent"]
    
    var lunarEvent: [LunarEvent] = [
        LunarEvent(talonsIconNames: talonsIcons[1], date: .now, eventTitle: "Some Info Here", alert: false),
        LunarEvent(talonsIconNames: talonsIcons[2], date: .now, eventTitle: "Some Info Here", alert: false),
        LunarEvent(talonsIconNames: talonsIcons[3], date: .now, eventTitle: "Some Info Here", alert: false),
        LunarEvent(talonsIconNames: talonsIcons[4], date: .now, eventTitle: "Some Info Here", alert: false),

    ]
    
    
    
    var body: some View {

            VStack {
                Text("Lunar Events")
                    .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
                    .font(.custom("Red Moon Rising", size: 32))
                    .padding(.top, 55)

                 ScrollView {
                ForEach(lunarEvent) { index in
                    
                    HStack(alignment: .top)  {
                       
                        Image("\(index.talonsIconNames)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
                            .font(.title)
                        VStack(alignment: .leading) {
                            Text("April 14") // work on formating the date data in this loop
                                .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
                                .font(.custom("Hubballi-Regular", size: 21))
                            Text(index.eventTitle)
                                .font(.custom("Hubballi-Regular", size: 21))
                                .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
                        }

                        /*
                         Create button for Bell Icon that allows for notifications
                         
                         Do we need the Bell Icon?
                         */
                        
                        Image(systemName: "bell.fill")
                            .foregroundColor(colorScheme == .dark ? Color(hue: 0.118, saturation: 0.62, brightness: 0.908) : .black)
                    }
                    .padding()
                    .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 3)
            //            .shadow(radius: 1, x: 5, y: 0)
                        .foregroundColor(Color(hue: 0.118, saturation: 0.62, brightness: 0.908))
                        
                    )
                }
                
            }
//                 .padding(.top)
//            .padding(50)
        }
//            .padding(.top)
//            .padding(.bottom)
        
    }
}

struct LunarEventCapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        LunarEventCapsuleView()
    }
}
