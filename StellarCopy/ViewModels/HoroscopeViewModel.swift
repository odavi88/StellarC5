//
//  HoroscopeViewModel.swift
//  Countries
//
//  Created by India Doria on 3/27/23.
//

import Foundation

//A JSON reqponse is received, but we can't seem to get it to display in a View. 3.27.23 India Doria Resolved 3.29.23
struct APIResponse : Identifiable {
    var id = UUID()
    var apiValues : [String] = []
}

@MainActor class HoroscopeViewModel: ObservableObject {
    @Published var apiResponse : APIResponse?
    @Published var horoscope: Horoscope = Horoscope(prediction_date: "3-27-23", status: true, sun_sign: "pisces", prediction: Prediction(personal_life: "lala", health: "Go to a doctor!", profession: "professional", travel: "Go to the beach.", emotions: "Why so serious?"))
    @Published var zodiacSign: String = UserViewModel().user.zodiacSign.rawValue
    
    func apiCall() async {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.apiResponse = APIResponse(apiValues: ["Testing","1","2","3"])
                }
        
        var request = URLRequest(url: URL(string: "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/\(zodiacSign)")!,timeoutInterval: Double.infinity)
        request.addValue("Basic NjIyODc0OjdhMGRjZWUwYzljM2UyZWU0N2QxNGY2ZmViNTliNGI1", forHTTPHeaderField: "Authorization")

        request.httpMethod = "POST"

        
        //MARK: Use UrlSession.shared.data instead and use try await with async throws
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            return
          }
          print(String(data: data, encoding: .utf8)!)

          
        }
        task.resume()

    }
    
    func reload() async {
        let url = URL(string: "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/\(zodiacSign)")!
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
