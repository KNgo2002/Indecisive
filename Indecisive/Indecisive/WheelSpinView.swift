//
//  WheelSpinView.swift
//  Indecisive
//
//  Created by Kyle Ngo.
//

import SwiftUI

struct WheelSpinView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    @State var userWheel = "wheel"
   
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
            
            Image(userWheel)
                .padding()
            Spacer()
        
            Button {
                spin()
            } label: {
                VStack {
                    // Changes text based on result
                    if userWheel == "wheel1" {
                        Text("You spun a 1!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userWheel == "wheel2" {
                        Text("You spun a 2!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userWheel == "wheel3" {
                        Text("You spun a 3!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userWheel == "wheel4" {
                        Text("You spun a 4!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userWheel == "wheel5" {
                        Text("You spun a 5!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userWheel == "wheel6" {
                        Text("You spun a 6!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userWheel == "wheel7" {
                        Text("You spun a 7!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userWheel == "wheel8" {
                        Text("You spun a 8!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else {
                        Text("Click the button!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    }
                    
                    Image("wheel-spin-button")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
            }
            Spacer()
        }
    }
    
    func spin() {
        // Randomize the user's wheel
        userWheel = "wheel" + String(Int.random(in: 1...8))
    }
    
}

struct WheelSpinView_Previews: PreviewProvider {
    static var previews: some View {
        WheelSpinView()
    }
}
