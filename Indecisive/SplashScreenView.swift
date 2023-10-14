//
//  SplashScreenView.swift
//  Indecisive
//
//  Created by Kyle Ngo.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    // App Logo
                    Image(systemName: "questionmark.bubble")
                        .font(.system(size: 200))
                        .foregroundColor(.black)
                    Text("Indecisive")
                        .font(Font.custom("Helvetica-bold", size: 50))
                        .foregroundColor(.black)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: . now() + 2.0){
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
