//
//  ContentView.swift
//  SwiftLessons
//
//  Created by Myles Grant on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press Me!") {
//                if message == "You are Awesome!" {
//                    message = "You are Great!"
//                    imageName = "hand.thumbsup"
//                } else {
//                    message = "You are Awesome!"
//                    imageName = "sun.max.fill"
//                }
                message = (message == "You are Awesome!" ? "You are Great!": "You are Awesome!")
                imageName = (message == "You are Awesome!" ? "sun.max.fill": "hand.thumbsup")
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
