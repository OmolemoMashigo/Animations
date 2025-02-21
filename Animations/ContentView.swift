//
//  ContentView.swift
//  Animations
//
//  Created by Omolemo Mashigo on 2025/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me"){

        }
        .padding(50)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(.circle)
        
        .overlay(
            Circle()
                .stroke(.blue)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeOut(duration: 3)
                    .repeatForever(autoreverses: false),
                        value: animationAmount
                )
            
        )
        
        .onAppear(){
            animationAmount = 2
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
