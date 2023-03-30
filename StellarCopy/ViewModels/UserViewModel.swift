//
//  UserViewModel.swift
//  StellarCopy
//
//  Created by India Doria on 3/29/23.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var user: User = User(firstName: "testFirst", lastName: "testLast", zodiacSign: .pisces)
    
    init() {
        load()
    }
    
    func createUser(firstName: String, lastName: String, zodiacSign: Zodiac) {
        user = User(firstName: firstName, lastName: lastName, zodiacSign: zodiacSign)
        save()
    }
    
    func save() {
        do {
            let url = try archiveURL()
            print("Saving entries to \(url)")
            
            let encoder = PropertyListEncoder()
            
            let data = try encoder.encode(user)
            try data.write(to: url)
            //saved entries
        } catch let encodingError {
            print("Couldn't save, 🤷🏾‍♀️. \(encodingError)")
        }
    }
    
    func load() {
        do {
            let url = try archiveURL()
            print("Loading user from \(url)")
            let data = try Data(contentsOf: url)
            let unarchiver = PropertyListDecoder()
            let loadedUser = try unarchiver.decode(User.self, from: data)
            user = loadedUser
        } catch let decodinngError{
            print("Could not read saved entries: \(decodinngError)")
        }
        
        
        
    }
    
    /// Gets the URL for the app's documents directory.
    private func archiveURL() throws -> URL {
        let documentsDirectory = try FileManager.default.url(
            for: .documentDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: false)
        return documentsDirectory.appendingPathComponent("entries", conformingTo: .propertyList)
    }
}
