//
//  ContentView.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var calendarSheetView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
                    
                    Button(action: {
                        calendarSheetView.toggle()
                    }, label: {
                        Image(systemName: "moon.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
                            .sheet(isPresented: $calendarSheetView) {
                                LunarCalView()
                            }
                    })
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
                }
                .padding(5)
                VStack(spacing: 10) {
                    Button("Today") {
                        //
                    }
                    .font(.title)
                    .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                        .padding()
                        .foregroundColor(Color(hue: 0.118, saturation: 0.62, brightness: 0.908))
                        .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.022, brightness: 0.099))
                        )
                        
                }
                .padding()
                
                HStack(spacing: 90) {
                    // Love life info
                    Button {
                        //
                    } label: {
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .background(
                                Circle()
                                    .stroke()
                                    .frame(width: 65, height: 65)
                            )
                            .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
                       
                        
                    }
                    
                    // finacial info
                    Button {
                        //
                    } label: {
                        Image(systemName: "dollarsign.circle.fill")
                            .font(.title)
                            .background(
                                Circle()
                                    .stroke()
                                    .frame(width: 65, height: 65)
                            )
                            .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
                    }
                    
                    // career info
                    Button {
                        //
                    } label: {
                        // if
                        Image(systemName: "brain.head.profile")
                            .font(.title)
                            .background(
                                Circle()
                                    .stroke()
                                    .frame(width: 65, height: 65)
                            )
                            .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
                    }
                    
                }
                .padding()
                
            }
            
            
            Spacer()
                .navigationTitle("Stellar")
//                .foregroundColor(Color(hue: 0.119, saturation: 0.62, brightness: 0.908))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
