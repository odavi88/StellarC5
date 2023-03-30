//
//  MoonViewModel.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/27/23.
//

import Foundation
import WeatherKit
import CoreLocation


//We use the @MainActor attribute to declare that all async tasks will occur on the main thread

class MoonViewModel: ObservableObject {
    
    let moons : [MoonPhase] = []
   
    let startDate = Date.now
    let endDate = Date.now
    let syracuse = CLLocation(latitude: 42, longitude: -83)
    func loadMoonPhase() async   {
    let weatherService = WeatherService()
    let forecast = try! await weatherService.weather(for: syracuse, including: .daily(startDate: startDate, endDate: endDate))
        
//    let weather = try! await weatherService.weather(for:syracuse)
        
      //  let historicForecast = weather.historic
        
        
        
        
//
//        let moonPhase1 = weather.dailyForecast.forecast[0].moon.phase
//        let date1 = weather.dailyForecast.forecast[0].date
//        let moonPhase2 = weather.dailyForecast.forecast[1].moon.phase
//        let date2 = weather.dailyForecast.forecast[1].date
//        let moonPhase3 = weather.dailyForecast.forecast[2].moon.phase
//        let date3 = weather.dailyForecast.forecast[2].date
//        let moonPhase4 = weather.dailyForecast.forecast[3].moon.phase
//        let date4 = weather.dailyForecast.forecast[3].date
//        let moonPhase5 = weather.dailyForecast.forecast[4].moon.phase
//        let date5 = weather.dailyForecast.forecast[4].date
//        let moonPhase6 = weather.dailyForecast.forecast[5].moon.phase
//        let date6 = weather.dailyForecast.forecast[5].date
//        let moonPhase7 = weather.dailyForecast.forecast[6].moon.phase
//        let date7 = weather.dailyForecast.forecast[6].date
//        let moonPhase8 = weather.dailyForecast.forecast[7].moon.phase
//        let date8 = weather.dailyForecast.forecast[7].date
//        let moonPhase9 = weather.dailyForecast.forecast[8].moon.phase
//        let date9 = weather.dailyForecast.forecast[8].date
//        let moonPhase10 = weather.dailyForecast.forecast[9].moon.phase
//        let date10 = weather.dailyForecast.forecast[9].date
//        let count = weather.dailyForecast.forecast.count
//
        
                      
                      
                      
                      }
          
}
