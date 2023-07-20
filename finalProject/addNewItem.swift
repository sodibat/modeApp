//
//  addNewItem.swift
//  finalProject
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct addNewItem: View {
    @State var isImagePickerShowing = false
    @State var selectedImage: UIImage?
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    var body: some View {
        NavigationStack {
            ZStack{
                Image("greenBack")
                    .resizable()
                VStack {
                    Image(uiImage: selectedImage ?? UIImage(named: "cameraImage")!)
                    HStack {
                        Button("Select Image") {
                            self.sourceType = .photoLibrary
                            isImagePickerShowing = true
                        }
                        .padding(.horizontal, 40.0)
                        Button("Take Image") {
                            self.sourceType = .camera
                            isImagePickerShowing = true
                        }
                        .padding(/*@START_MENU_TOKEN@*/.horizontal, 40.0/*@END_MENU_TOKEN@*/)
                        
                    }
                }
            }
        }
        .sheet(isPresented: $isImagePickerShowing) {
            ImagePicker(selectedImage: $selectedImage, isImagePickerShowing: $isImagePickerShowing, sourceType: self.sourceType)
        }
    }
}

struct addNewItem_Previews: PreviewProvider {
    static var previews: some View {
        addNewItem()
    }
}
