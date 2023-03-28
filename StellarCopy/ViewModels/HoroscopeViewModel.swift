//
//  HoroscopeViewModel.swift
//  Countries
//
//  Created by India Doria on 3/27/23.
//

import Foundation

//A JSON reqponse is received, but we can't seem to get it to display in a View. 3.27.23 India Doria

@MainActor class HoroscopeViewModel: ObservableObject {
    @Published var horoscope: Horoscope = Horoscope(prediction_date: "3-27-23", status: true, sun_sign: "pisces", prediction: Prediction(personal_life: "lala", profession: "professional", travel: "Go to the beach.", emotions: "Why so serious?"))
    
    func apiCall()   {
        var request = URLRequest(url: URL(string: "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/pisces")!,timeoutInterval: Double.infinity)
        request.addValue("Basic NjIyODc0OjdhMGRjZWUwYzljM2UyZWU0N2QxNGY2ZmViNTliNGI1", forHTTPHeaderField: "Authorization")

        request.httpMethod = "POST"

        
        //MARK: Use UrlSession.shared.data instead and use try await with async throws
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            return
          }
            
            self.horoscope = try! JSONDecoder().decode(Horoscope.self, from: data)
            
            
          print(String(data: data, encoding: .utf8)!)

          
        }
        
        
      

        task.resume()

    }
    
    func reload() async {
        let url = URL(string: "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:pisces")!
        
     
        
        let urlSession = URLSession.shared
        
        do {
            let (data, _) = try! await urlSession.data(from: url)
            self.horoscope = try JSONDecoder().decode(Horoscope.self, from: data)
        }
        catch {
            debugPrint("Error loading \(url): \(String(describing: error))")
        }
    }
    
    
}
