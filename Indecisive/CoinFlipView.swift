//
//  CoinFlipView.swift
//  Indecisive
//
//  Created by Kyle Ngo.
//
import SwiftUI

struct CoinFlipView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    @State var userCoin = "coin"
    @State var heads = true
   
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
            
            Image(userCoin)
                .padding()
            Spacer()
        
            Button {
                flip()
            } label: {
                VStack {
                    // Changes text based on result
                    if userCoin == "coin1" {
                        Text("You got heads!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else if userCoin == "coin2" {
                        Text("You got tails!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    } else {
                        Text("Click the button!")
                            .font(Font.custom("Helvetica-bold", size: 45))
                            .foregroundColor(.black)
                    }
                    Image("coin-flip-button")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
            }
            Spacer()
        }
    }
    
    func flip() {
        // Randomize the user's coin
        userCoin = "coin" + String(Int.random(in: 1...2))
    }
}

struct CoinFlipView_Previews: PreviewProvider {
    static var previews: some View {
        CoinFlipView()
    }
}
