//
//  Horoscope.swift
//  Countries
//
//  Created by India Doria on 3/27/23.
//

import Foundation


struct Prediction : Codable{
  //  var id = UUID()

    var personal_life : String
    var health : String
    
    var profession : String
    
    var travel : String
    var emotions : String
    
}


struct Horoscope: Codable {
    //var id = UUID()
    var prediction_date: String
    
    var status : Bool
    //will do an enum later
    var sun_sign: String
//    var imageName: String
    var prediction: Prediction
}
