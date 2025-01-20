//
//  ContentView.swift
//  SwiftLessons
//
//  Created by Myles Grant on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I am a Programmer"
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Button("Click Me!") {
                message = "Awesome!"
            }
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
