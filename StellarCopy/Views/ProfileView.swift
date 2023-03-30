//
//  ProfileView.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/27/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var userViewModel = UserViewModel()
    
    @StateObject var moonModel = MoonViewModel()
    @StateObject var horoscopeModel = HoroscopeViewModel()
    var body: some View {
            
            VStack {
                
                //Text(Date().formatted(date: .abbreviated, time: .omitted))
                Text("Welcome, \(userViewModel.user.firstName)!")
                Text(horoscopeModel.horoscope.prediction.emotions)
                //Text(horoscopeModel.horoscope.prediction.travel)
                
                Text(horoscopeModel.horoscope.sun_sign)
                
                //            Text(horoscopeModel.horoscope.prediction.personal_life)
            }.task {
                await self.horoscopeModel.apiCall()
            }
        
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView().environmentObject(UserViewModel())
    }
}
