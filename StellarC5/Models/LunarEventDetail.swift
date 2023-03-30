//
//  LunarEventDetail.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/28/23.
//

import Foundation

struct LunarEvent: Identifiable {
    let id = UUID()
    let talonsIconNames: String
    let date: Date
    let eventTitle: String
    let alert: Bool?
    
}

//var lunarEvent: [LunarEvent] = [
//
//    LunarEvent(icon: "", date: .now, eventTitle: "", alert: ""),
//    LunarEvent(icon: "String", date: .now, eventTitle: "", alert: ""),
//    LunarEvent(icon: "String", date: .now, eventTitle: "", alert: ""),
//    LunarEvent(icon: "", date: .now, eventTitle: "", alert: "")
//
//]
