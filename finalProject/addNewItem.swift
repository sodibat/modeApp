//
//  addNewItem.swift
//  finalProject
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct addNewItem: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("ADD NEW ITEM")
                    .font(.largeTitle)
                    .foregroundColor(Color.green)
            }
        }
    }
}

struct addNewItem_Previews: PreviewProvider {
    static var previews: some View {
        addNewItem()
    }
}
