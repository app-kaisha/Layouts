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
        
        GeometryReader { geometry in
            VStack {
                Text("Awesome!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.indigo)
                
                Spacer()
                
                Text(message)
                //                .border(.blue)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                //                .border(.orange, width: 2)
                    .padding()
                
                Spacer()
                
                Divider()
                    .background(.black)
                    .frame(width: geometry.size.width * 2/3)
                    .padding()
                    
                
                Rectangle()
                    .fill(.indigo)
                    .frame(width: geometry.size.width * 2/3, height: 2)
                
                
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
                
                Rectangle()
                    .frame(height: 0)
                    .background(.indigo)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
