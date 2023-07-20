//
// closetShuffle.swift
// finalProject
//
// Created by Scholar on 7/18/23.
//
import SwiftUI
struct closetShuffle: View {
  var shirts = ["navyShirt", "blackShirt", "pinkShirt", "stripedShirt", "whiteShirt"]
  var shoes = ["loaferShoes", "converseShoes", "nikeShoes", "balanceShoes", "sketcherShoes"]
  var bottoms = ["grayBlueBottoms", "blueBottoms", "ivoryBottoms", "beigeBottoms", "blackBottoms"]
  var accessories = ["ovalAccessory", "circleAccessory", "leafAccessory", "pearlAccessory", "flowerAccessory"]
  @State private var randomIndex = Int.random(in: 0..<5)
  var body: some View {
    NavigationStack {
        ZStack{
            Image("greenBack")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Text("CLOSET SHUFFLE")
          .font(.title)
          .fontWeight(.ultraLight)
          .padding(.top, 70.0)
                NavigationLink(destination: myGallery()) {
                    Text("My Gallery")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(Color(hue: 0.355, saturation: 0.519, brightness: 0.449))
                    .padding(.leading) }
                VStack {
                    Button(action: {
            self.randomIndex = Int.random(in: 0..<shirts.count) }) {
              Text("Shuffle")
                .fontWeight(.light)
            }
            .foregroundColor(.black)
            .padding()
            .background(Color(hue: 0.317, saturation: 0.424, brightness: 0.877))
            .cornerRadius(30)
            VStack {
                Image(accessories[randomIndex])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.leading)
                Image(shirts[randomIndex])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.leading)
                Image(bottoms[randomIndex])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(shoes[randomIndex])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
          }
      }
      .ignoresSafeArea()
      }
    }
  }
  struct closetShuffle_Previews: PreviewProvider {
    static var previews: some View {
      closetShuffle()
    }
  }
}
