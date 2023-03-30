//
//  ChartModel.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/29/23.
//

import Foundation


struct Chart: Identifiable {
    let id = UUID()
    let subSignIcon: String
    let zodiacSign: String
    let infoIcon: String?
    let houses: Int
    
    
}


var astrologyChart = [

    Chart(subSignIcon: "sun.max.fill", zodiacSign: "Turaus", infoIcon: "", houses: 1)
    
]

enum SubSignType: String {
    
    case acendant,
         moon,
         venus,
         sun,
         mercury,
         mars,
         jupiter,
         pluto,
         neptune,
         uranus,
         saturn
    
    var subSignType: String {
        switch self {
        case .acendant:
            return "Acendant"
        case .moon:
            return "Moon"
        case .venus:
            return "Venus"
        case .sun:
            return "Sun"
        case .mercury:
            return "Mercury"
        case .mars:
            return "Mars"
        case .jupiter:
            return "Jupiter"
        case .pluto:
            return "Pluto"
        case .neptune:
            return "Neptune"
        case .uranus:
            return "Uraus"
        case .saturn:
            return "Saturn"
        }
    }
    
}



struct ChartInfo: Identifiable {
    let id = UUID()
    let subSign: SubSignType
    let zSignImageName: String
}


var chartInfo = [

    ChartInfo(subSign: .sun, zSignImageName: "Turaus")

]
