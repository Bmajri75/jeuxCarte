//
//  ContentView.swift
//  jeuxCarte
//
//  Created by bechir Majri on 26/06/2020.
//  Copyright © 2020 bechir Majri. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State private var clubBlack: String = "♠︎ Club"
    @State private var spadeBlack: String = "♣︎ Spade"
    @State private var diamondRed: String = "♦︎ Diamond"
    @State private var heartRed: String = "♥︎ Heart"
    @State private var suit: String = "Select a Suit"
    var body: some View {
        
        
        
        VStack{
            HStack(spacing: 40){
                // Club Black
                Button(action: { self.suit = self.clubBlack }) {
                    Text("\(clubBlack)")
                }
                .font(.largeTitle)
                .multilineTextAlignment(.trailing)
                .padding(5)
                .foregroundColor(Color.white)
                .background(Color.black)
                .cornerRadius(15)
                // spade Black
                Button(action: { self.suit = self.spadeBlack }) {
                    Text("\(spadeBlack)")
                }
                .font(.largeTitle)
                .multilineTextAlignment(.trailing)
                .padding(5)
                .foregroundColor(Color.white)
                .background(Color.black)
                .cornerRadius(15)
                
            }
            
            HStack{
                Text("\(suit)")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 100)
                
            }
            
            
            HStack(spacing: 40){
                // diamon  red
                VStack {
                    Button(action: { self.suit = self.diamondRed }) {
                        Text("\(diamondRed)")
                    }
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                    .padding(5)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .cornerRadius(15)
                    
                }
                
                // heart Red
                Button(action: { self.suit = self.heartRed }){
                    Text("\(heartRed)")
                }
                .font(.largeTitle)
                .multilineTextAlignment(.trailing)
                .padding(5)
                .foregroundColor(Color.white)
                .background(Color.red)
                .cornerRadius(15)
            }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
