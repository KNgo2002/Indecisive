//
//  DiceRollView.swift
//  Indecisive
//
//  Created by Kyle Ngo.
//

import SwiftUI

struct DiceRollView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    @State var userDice = "dice"
   
    var body: some View {

        VStack {
            Spacer()
                // Custom Back Button
                .navigationBarBackButtonHidden(true)
                .toolbar(content: {
                    ToolbarItem (placement: .navigationBarLeading) {
                        
                        Button(action: {
                            presentationMode.wrappedValue
                                .dismiss()
                        }, label: {
                            Image(systemName: "arrowshape.left.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                            Text("Back")
                                .font(Font.custom("Helvetica-bold", size: 30))
                                .foregroundColor(.black)
                        })
                    }
                })
            Spacer()
            
            Image(userDice)
                .padding()
            Spacer()
        
            Button {
                roll()
            } label: {
                VStack {
                    // Changes text based on result
                    if userDice == "dice1" {
                        Text("You rolled a 1!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userDice == "dice2" {
                        Text("You rolled a 2!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userDice == "dice3" {
                        Text("You rolled a 3!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userDice == "dice4" {
                        Text("You rolled a 4!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userDice == "dice5" {
                        Text("You rolled a 5!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userDice == "dice6"{
                        Text("You rolled a 6!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else {
                        Text("Click the button!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    }
                    
                    Image("dice-roll-button")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
            }
            Spacer()
        }
    }
    
    func roll() {
        // Randomize the user's coin
        userDice = "dice" + String(Int.random(in: 1...6))
    }
    
}

struct DiceFlipView_Previews: PreviewProvider {
    static var previews: some View {
        DiceRollView()
    }
}
