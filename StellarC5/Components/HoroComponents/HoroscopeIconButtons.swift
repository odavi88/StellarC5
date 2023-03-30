//
//  HoroscopeIconButtons.swift
//  StellarC5
//
//  Created by Omar Davidson II on 3/28/23.
//

import SwiftUI

struct HoroscopeIconButtons: View {
    
//MARK: ButtonLogic
//    @State private var isTappedHeart = false
//    @State private var isTappedMoney = false
//    @State private var isTappedBook = false
   
//MARK: SheetViews
     @State private var showCompatSheet = false
     @State private var showDolarSheet = false
     @State private var showHistSheet = false
    
    
   
    
    var body: some View {
        
//    MARK: 3 detail horoscope buttons
                    
                    // create onTap logic that when buttons are pressed they revert look
                    
                    // do we want the buttons to be sheetViews?
                    
        HStack(spacing: 90) {
            
            // MARK: Heart Button
            Button {
                //
                //                            isTappedMoney == false ?  :
                
                 showCompatSheet.toggle()
//                isTappedHeart.toggle()
                
            } label: {
                
                //Image(systemName: isTapped == true ? "heart.fill" : "heart")
                
                Image(systemName: "heart.fill")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .background(
                        Circle()
                            .stroke()
                            .frame(width: 60, height: 60)
                    )}
                           .sheet(isPresented: $showCompatSheet, content: {
                      RomCompatabilityView()
                               
                               // MARK: Modifies the bottom sheet view hieght
                                   .presentationDetents([.medium])
        })
                        
                        // MARK: DOLLAR SIGN BUTTON
                        Button {
//                            isTappedMoney.toggle()
                            
                            showDolarSheet.toggle()
                            
                        } label: {
                            
                            //Image(systemName: isTapped == true ? "dollarsign.circle.fill" : "dollarsign.circle")
                            
                            Image(systemName: "dollarsign.circle.fill")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .background(
                                    Circle()
                                        .stroke()
                                        .frame(width: 60, height: 60)
                                )}
                        .sheet(isPresented: $showDolarSheet) {
                            CareerHoro()
                                .presentationDetents([.medium])
                        }
                        
                        // MARK: HISTORY BUTTON
                        Button {
//                            isTappedBook.toggle()
                            showHistSheet.toggle()
                        } label: {
                            //Image(systemName: isTapped == true ? "star.fill" : "star")
                            Image(systemName: "book.fill")
                                .font(.largeTitle)
                                .background(
                                    Circle()
                                        .stroke()
                                        .frame(width: 60, height: 60)
                                )}
                        .sheet(isPresented: $showHistSheet) {
                            HistoryHoro()
                                .presentationDetents([.medium])
                        }
                        
                    }
                    .foregroundColor(Color(red: 0.763, green: 0.55, blue: 0.138))
    }
}

struct HoroscopeIconButtons_Previews: PreviewProvider {
    static var previews: some View {
        HoroscopeIconButtons()
    }
}
