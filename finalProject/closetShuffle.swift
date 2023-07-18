//
//  closetShuffle.swift
//  finalProject
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct closetShuffle: View {
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
                }
            }
        }
    }
        
}


struct closetShuffle_Previews: PreviewProvider {
    static var previews: some View {
        closetShuffle()
    }
}
