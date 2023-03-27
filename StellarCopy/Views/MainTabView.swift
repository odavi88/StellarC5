//
//  MainTabView.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/27/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        
        TabView() {
            ProfileView().tabItem {
                VStack {
                    Image(systemName:"person.circle.fill")
                    Text(verbatim: "Profile")
                }
            }.tag(1)
            
            
            CalendarView().tabItem {
                VStack {
                    Image(systemName:"calendar")
                    Text(verbatim: "Calendar")
                }
            }.tag(2)
            
            
            RitualView().tabItem {
                VStack {
                    Image(systemName:"aqi.low")
                    Text(verbatim: "Rituals")
                }
            }.tag(3)
            
            ChartView().tabItem {
                VStack {
                    Image(systemName:"chart.bar")
                    Text(verbatim: "Chart")
                }
            }.tag(4)
          
          
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
