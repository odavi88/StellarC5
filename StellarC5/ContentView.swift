//
//  ContentView.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/27/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            VStack(spacing: -10) {
                
                VStack {
                    
                    TabView {
                        DailyHoroscopeTextView()
                            .padding()
                        ChartView()
                        LunarEventCapsuleView()
    //                  MARK: LunarCalView()
                    }
                    .tabViewStyle(.page)
                    
                }
            }
//            .toolbar {
//                Image(systemName: "gear")
//                    .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
//            }
            Spacer()
        }
    }
    
// MARK: Code that loops through UIFont families
//      init() {
//          for familyName in UIFont.familyNames {
//              print(familyName)
//    
//              for fontName in UIFont.fontNames(forFamilyName: familyName) {
//                  print("-- \(fontName)")
//              }
//          }
//      }
    
    
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
