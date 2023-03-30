//
//  MoonViewModel.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/27/23.
//

import Foundation


//We use the @MainActor attribute to declare that all async tasks will occur on the main thread
@MainActor
class MoonViewModel: ObservableObject {
    @Published var moons : [Moon] = []
    
    func reload() async {
        let url = URL(string: "https://api.qweather.com/v7/astronomy/moon?[params]")!
        let urlSession = URLSession.shared
        do {
            let (data, _) = try await urlSession.data(from: url)
            print(try JSONDecoder().decode([Moon].self, from: data))
            self.moons = try JSONDecoder().decode([Moon].self, from: data)
        }
        catch {
            // Error handling in case the data couldn't be loaded
            // For now, only display the error on the console
            debugPrint("Error loading \(url): \(String(describing: error))")
        }
    }
}
