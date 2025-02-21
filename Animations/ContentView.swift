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
            animationAmount += 1
        }
        .padding(50)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        
        //.animation(.default, value: animationAmount)
        
        //.animation(.spring(duration: 1,bounce: 0.9), value: animationAmount)
        
//        .animation(
//            .easeIn(duration: 3)
//            .repeatCount(2, autoreverses: true),
//                value: animationAmount
//        )
        
        .animation(
            .easeIn(duration: 3)
            .repeatForever(),
                value: animationAmount
        )
        
        
    }
}

#Preview {
    ContentView()
}
