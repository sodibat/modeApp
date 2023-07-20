//
//  ContentView.swift
//  finalProject
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
import CoreData

struct Quote {
    let text: String
    let author: String
}
let quotes = [
    Quote(text: "Fashion is part of the daily air and it changes all the time, with all the events. You can even see the approaching of a revolution in clothes. You can see and feel everything in clothes", author: "Diana Vreeland"),
    Quote(text: "Don't be into trends. Don't make fashion own you, but you decide what you are, what you want to express by the way you dress and the way to live.", author: "Gianni Versace"),
    Quote(text: "What you wear is how you present yourself to the world, especially today, when human contacts are so quick. Fashion is instant language.", author: "Miuccia Prada"),
    Quote(text: "I firmly believe that with the right footwear one can rule the world.", author: "Bette Midler"),
    Quote(text: "You can have anything you want in life if you dress for it", author: "Edith Head")
    // Add more quotes as needed
]
struct RandomQuoteView: View {
    let quotes: [Quote]
    @State private var currentQuote: Quote?
    var body: some View {
        VStack {
            Text(currentQuote?.text ?? "Loading quote...")
                .font(.headline)
                .padding()
            Text("- \(currentQuote?.author ?? "")")
                .font(.subheadline)
        }
        .onAppear {
            self.pickRandomQuote()
        }
    }
    func pickRandomQuote() {
        guard !quotes.isEmpty else { return }
        let randomIndex = Int.random(in: 0..<quotes.count)
        self.currentQuote = quotes[randomIndex]
    }
}
struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("greenBack")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                VStack {
                Image("home")
                    NavigationLink(destination: closetShuffle()) {
                        Image("shuffle")
                            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                                  }
                            Spacer()
                            
                    RandomQuoteView(quotes: quotes)
                        .padding(.horizontal, 100.0)
                    Spacer()
                    Spacer()
                    Image("mode")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 100.0)
                    .font(.headline)
                        Spacer()
                }
            }
        }
    }
}
struct ContentView: View {
    var body: some View {
        HomeView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}

    //struct ContentView: View {
    // @State private var fashionQuotes = ["Fashion is part of the daily air and it changes all the time, with all the events. You can even see the approaching of a revolution in clothes. You can see and feel everything in clothes", "Don't be into trends. Don't make fashion own you, but you decide what you are, what you want to express by the way you dress and the way to live.", "What you wear is how you present yourself to the world, especially today, when human contacts are so quick. Fashion is instant language.", "I firmly believe that with the right footwear one can rule the world.", "You can have anything you want in life if you dress for it"]
    //@State private var fashionInfluencers = ["Diana Vreeland", "Gianni Versace", "Miuccia Prada", "Bette Midler", "Edith Head"]
    //@State private var quoteIndex = Int.random(in: 0..<fashionInfluencers.count)
    //
    //    var body: some View {
    //        NavigationStack {
    //              ZStack {
    //                Image("greenBack")
    //                  .resizable()
    //                  .edgesIgnoringSafeArea(.all)
    //                  VStack{
    //                      Image("home")
    //                      NavigationLink(destination: closetShuffle()) {
    //                          Image("shuffle")
    //                              .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
    //                      }
    //                      Spacer()
    //                      Image("mode")
    //                          .resizable(resizingMode: .stretch)
    //                          .aspectRatio(contentMode: .fit)
    //                          .padding(.horizontal, 100.0)
    //
    //                      func getRandomQuote() -> String {
    //                            return fashionQuotes[quoteIndex]
    //                        }
    //        Text (getRandomQuote())
    //                      //            NavigationLink(destination: closetShuffle()) {
    //                      //                Text("CLOSET SHUFFLE")
    //                      //                    .font(.title)
    //                      //                    .fontWeight(.ultraLight)
    //                      //            }
    //                  }
    //              }
    //            }
    //          }

   //Hi guys! I was thinking about having a way to communicate through our code to let others know not to touch something or leaves notes. Choose an emoji so we would know who said what (e.g. [💐=Sarah] 💐Please do not change any lines in the ContentView other than lines 20-27.)
   //Sarah's emoji: 💐
   //Katie's emoji:🎀
   //Belinda's emoji:
                   

   //    private func addItem() {
   //        withAnimation {
   //            let newItem = Item(context: viewContext)
   //            newItem.timestamp = Date()
   //
   //            do {
   //                try viewContext.save()
   //            } catch {
   //                // Replace this implementation with code to handle the error appropriately.
   //                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
   //                let nsError = error as NSError
   //                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
   //            }
   //        }
   //    }
   //
   //    private func deleteItems(offsets: IndexSet) {
   //        withAnimation {
   //            offsets.map { items[$0] }.forEach(viewContext.delete)
   //
   //            do {
   //                try viewContext.save()
   //            } catch {
   //                // Replace this implementation with code to handle the error appropriately.
   //                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
   //                let nsError = error as NSError
   //                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
   //            }
   //        }
   //    }
   //
   //private let itemFormatter: DateFormatter = {
   //    let formatter = DateFormatter()
   //    formatter.dateStyle = .short
   //    formatter.timeStyle = .medium
   //    return formatter
   //}()





    //    @Environment(\.managedObjectContext) private var viewContext
    //
    //    @FetchRequest(
    //        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
    //        animation: .default)
    //    private var items: FetchedResults<Item>
    //    private var showQuote = false
