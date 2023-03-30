//
//  HorescopeModel.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/27/23.
//

import Foundation

enum HoroscopeType {
    case romCompat, career
}

enum House: String {
    
    case house1, house2, house3, house4, house5, house6
    
    
    
    var houseNum: String {
        switch self {
            
        case .house1:
            return "First House"
        case .house2:
            return "Second House"
        case .house3:
            return "Third House"
        case .house4:
            return "Fourth House"
        case .house5:
            return "Fifth House"
        case .house6:
            return "Sixth House"
        }
        
    }
}

//struct 

struct Horescope: Hashable {
    
    let astroSignName: String
    let astroSignImageName: String
        
}




struct HoroscopeInfo: Identifiable {
    let id = UUID()
    let image: String
    let house: House
    let sign: String
}

var horoInfo = [
    HoroscopeInfo(image: "", house: .house1, sign: "")
]
