//
//  ContentView.swift
//  Animations
//
//  Created by Santiago Gonzalez on 08/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    @State private var enabled = false
    var body: some View {
        VStack {
            Button("Tap Me") {
                enabled.toggle()
            }
            
            .frame(width: 200, height: 200)
            .background(enabled ? .blue : .red)
            .animation(nil, value: enabled)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
            .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
            
        
            
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
