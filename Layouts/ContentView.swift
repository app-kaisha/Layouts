//
//  ContentView.swift
//  Layouts
//
//  Created by app-kaihatsusha on 29/12/2025.
//  Copyright © 2025 app-kaihatsusha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = "Yo when the genius bar needs help they call you"
    
    var body: some View {
        
        VStack {
            Text(message)
                .border(.blue)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 2)
                .padding()
            HStack {
                Button("Awesome") {
                    message = "You Are Awesome!"
                }
                
                Button("Great") {
                    message = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .border(.purple, width: 5)
        }
    }
}

#Preview {
    ContentView()
}
