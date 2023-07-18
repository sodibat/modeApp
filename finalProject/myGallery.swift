//
//  myGallery.swift
//  finalProject
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct myGallery: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("MY GALLERY")
                    .font(.largeTitle)
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.purple)
                }
                    NavigationLink(destination: addNewItem() ) {
                        Text("ADD NEW ITEM")
                            .font(.title2)
                            .foregroundColor(Color.green)
                    
                }
            }
        }
    }


struct myGallery_Previews: PreviewProvider {
    static var previews: some View {
        myGallery()
    }
}
