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
            ZStack{
            Image("greenBack")
            .resizable()
            .edgesIgnoringSafeArea(.all)
                VStack{
                    NavigationLink(destination: ContentView()) {
                        Image("home")
                    }
                    Image("gallery")
                    Text("A C C E S S O R I E S ")
                    HStack {
                        Image("flowerAccessory")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("pearlAccessory")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("leafAccessory")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("ovalAccessory")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("hoopAccessory")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        
                    }
                    
                    
                    Text("T O P S")
                    HStack{
                        Image("navyShirt")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("pinkShirt")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("blackShirt")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("stripedShirt")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("whiteShirt")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                    }
                    Text("B O T T O M S")
                    HStack{
                        Image("grayBlueBottoms")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("blueBottoms")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("beigeBottoms")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("ivoryBottoms")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("blackBottoms")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                    }
                    Text("S H O E S")
                    HStack{
                        Image("balanceShoes")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("converseShoes")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("loaferShoes")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("sketcherShoes")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        Image("nikeShoes")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 70, height: 70)
                        
                    }
                }
                .ignoresSafeArea()
                      }
                    ZStack {
                        Rectangle()
                            .frame(width: 500.0, height: 82.0)
                            .ignoresSafeArea(.all)
                            .background(Color(red: 0.99, green: 1.0, blue: 0.948))
                            .foregroundColor(Color(red: 0.988, green: 1.0, blue: 0.948))
                        NavigationLink(destination: addNewItem()) {
                        Text("Add New Item") }
                    .foregroundColor(.black)
                    .padding()
                    .background(Color(hue: 0.317, saturation: 0.424, brightness: 0.877))
                        .cornerRadius(30)
                            

                        
                        }
                    }
                  }
                }



struct myGallery_Previews: PreviewProvider {
    static var previews: some View {
        myGallery()
    }
}

