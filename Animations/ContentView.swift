//
//  ContentView.swift
//  Animations
//
//  Created by Omolemo Mashigo on 2025/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var amountDragged = CGSize.zero
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(.rect(cornerRadius: 10))
            .offset(amountDragged)
            .gesture(
                DragGesture()
                    .onChanged{amountDragged = $0.translation}
                    .onEnded{_ in amountDragged = .zero}
            )
        
    }
}

#Preview {
    ContentView()
}
