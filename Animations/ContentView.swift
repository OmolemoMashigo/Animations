//
//  ContentView.swift
//  Animations
//
//  Created by Omolemo Mashigo on 2025/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isRedShowing = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
            
            if isRedShowing{
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation {
                isRedShowing.toggle()
                
            }
        }
        
    }
}

    struct CornerRotateModifier: ViewModifier{
        let amount: Double
        let anchor: UnitPoint //which part of the animation is pinned
        
        func body(content: Content) -> some View {
            content
                .rotationEffect(.degrees(amount), anchor: anchor )
                .clipped()
        }
    }
    
    extension AnyTransition{
        static var pivot: AnyTransition{
            .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading), identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
        }
    }
    
    

#Preview {
    ContentView()
}
