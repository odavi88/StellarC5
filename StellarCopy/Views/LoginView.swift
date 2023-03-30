//
//  LoginView.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/27/23.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    @State var firstName = ""
    @State var lastName = ""
    //MARK: We need to change this to Swift's 'Date' type
    @State var zodiacSign: Zodiac = .taurus
    @Binding var userIsLoggedIn: Bool
    @StateObject var horoscopeModel = HoroscopeViewModel()

    
    var body: some View {
        Form {
            
                TextField("First name:", text: $firstName)
                TextField("Last name:", text: $lastName)
                Picker(selection: $zodiacSign, label: Text("Sign")) {
                    
                    Text("Aries").tag(Zodiac.aries)
                    Text("Taurus").tag(Zodiac.taurus)
//                    Text("Gemini").tag(Zodiac.gemini)
//                    Text("Cancer").tag(Zodiac.cancer)
//                    Text("Leo").tag(Zodiac.leo)
                    Text("Virgo").tag(Zodiac.virgo)
                    Text("Libra").tag(Zodiac.libra)
                    Text("Scorpio").tag(Zodiac.virgo)
                    Text("Sagittarius").tag(Zodiac.sagittarius)
                    Text("Capricorn").tag(Zodiac.capricorn)
                    Text("Aquarius").tag(Zodiac.aquarius)
                    Text("Pisces").tag(Zodiac.pisces)
                }
            Button("Start") {
                userIsLoggedIn.toggle()
                UserViewModel().createUser(firstName: firstName, lastName: lastName, zodiacSign: zodiacSign)
                horoscopeModel.zodiacSign = zodiacSign.rawValue
                
            }
            }
            
        }
        
    }


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(userIsLoggedIn: .constant(false))
            .environmentObject(UserViewModel())

    }
}
