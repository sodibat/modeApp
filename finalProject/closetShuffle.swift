//
//  closetShuffle.swift
//  finalProject
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct closetShuffle: View {
    let shirts = ["teeShirt", "grayShirt", "blouseShirt"]
    @State private var randomIndex = Int.random(in: 0..<3)
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("CLOSET SHUFFLE")
                    .font(.title)
                    .fontWeight(.ultraLight)
                NavigationLink(destination: myGallery()) {
                    Text("My Gallery")
                        .font(.title)
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.purple)
                        .padding(.leading)                        
                    
                    Image(shirts[randomIndex])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading)
                    
                    Button(action: {
                        self.randomIndex = Int.random(in: 0..<shirts.count) }) {
                            Text("Randomize")
                                .fontWeight(.light)
                        }
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.yellow.opacity(0.5))
                        .cornerRadius(30)
                }
            }
        }
    }
    
    
    struct closetShuffle_Previews: PreviewProvider {
        static var previews: some View {
            closetShuffle()
        }
    }
}
