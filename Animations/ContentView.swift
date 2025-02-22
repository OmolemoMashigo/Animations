//
//  ContentView.swift
//  Animations
//
//  Created by Omolemo Mashigo on 2025/02/21.
//

import SwiftUI

struct ContentView: View {
    
    let letters = Array("Hello SwiftUI")
    
    @State private var enabled = false
    @State private var amountDragged = CGSize.zero
    
    
    var body: some View {
        
        HStack(spacing: 0){
            ForEach(0..<letters.count, id: \.self){ num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(amountDragged)
                    .animation(.linear.delay(Double(num)/20), value: amountDragged)
                   
            }
        }//attach the gesture to whe whole HStack
        .gesture(
            DragGesture()
                .onChanged{amountDragged = $0.translation}
                .onEnded{ _ in
                    amountDragged = .zero
                    enabled.toggle()
                }
        )
    }
}

#Preview {
    ContentView()
}
