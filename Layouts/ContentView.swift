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
            
            Spacer()
            
            Text(message)
            //                .border(.blue)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.goldBC)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
            //                .border(.orange, width: 2)
                .padding()
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    message = "You Are Awesome!"
                }
                Spacer()
                Button("Great") {
                    message = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            //            .border(.purple, width: 5)
            .padding()
            
        }
        
    }
}

#Preview {
    ContentView()
}
