//
//  ContentView.swift
//  Animations
//
//  Created by Omolemo Mashigo on 2025/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me"){
            withAnimation(.spring(duration: 1, bounce: 0.5)){
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        
       
        
        
        
    }
}

#Preview {
    ContentView()
}
