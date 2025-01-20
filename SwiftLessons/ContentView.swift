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
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .shadow(radius: 30)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            Button("BC's Future?") {
                let image1 = "divest-01"
                let image2 = "divest-02"
                let image3 = "divest-03"
                let image4 = "divest-04"
                let caption1 = "Gasson Underwater."
                let caption2 = "The Yacht Problem."
                let caption3 = "No Backbone"
                let caption4 = "Follow the Leader"
                
//                message = (message == "Gasson Underwater." ? "The Yacht Problem.": "Gasson Underwater.")
//                imageName = (imageName == image1 ? image2: image1)
                
                switch imageName {
                case image1:
                    imageName = image2
                    message = caption2
                case image2:
                    imageName = image3
                    message = caption3
                case image3:
                    imageName = image4
                    message = caption4
                case image4:
                    imageName = image1
                    message = caption1
                default:
                    imageName = image1
                    message = caption1
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.black)
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
