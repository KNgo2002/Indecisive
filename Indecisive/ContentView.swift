//
//  ContentView.swift
//  Indecisive
//
//  Created by Kyle Ngo.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                // App Logo
                Spacer()
                Image(systemName: "questionmark.bubble")
                    .font(.system(size: 100))
                    .foregroundColor(.black)
                Text("Indecisive")
                    .font(Font.custom("Helvetica-bold", size: 50))
                    .foregroundColor(.black)
                Spacer()
                
                // Decision-Making Tools
                NavigationLink(destination: CoinFlipView()) {
                    Spacer()
                    Image("coin-home-button")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Spacer()
                }
                
                NavigationLink(destination: DiceRollView()) {
                    Spacer()
                    Image("dice-home-button")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Spacer()
                }
                
                NavigationLink(destination: WheelSpinView()) {
                    Spacer()
                    Image("wheel-home-button")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
