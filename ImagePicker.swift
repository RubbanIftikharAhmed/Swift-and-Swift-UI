//
//  ImagePicker.swift
//  ContinuedLearning
//
//  Created by Rubban Iftikhar on 26/03/2025.
//

import SwiftUI
import PhotosUI

struct ImagePicker: View {
    @State private var image : UIImage? = nil
    @State private var photosPickerItem : PhotosPickerItem?
    var body: some View {
        HStack(){
            PhotosPicker(selection: $photosPickerItem, matching: .images) {
                Image(uiImage: image ?? UIImage(systemName: "person.circle")!)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
            }
            .onChange(of: photosPickerItem) { _ in
                Task{
                    if let photosPickerItem {
                        do {
                            let imageData = try await photosPickerItem.loadTransferable(type: Data.self)
                            if let imageData {
                                image = UIImage(data: imageData)
                            }
                        } catch {
                            print("Error loading image: \(error)")
                        }
                    }
                    photosPickerItem = nil
                }
            }
            Spacer()
            VStack{
                Text("Rubban Iftikhar")
                    .font(.title3)
                    .fontWeight(.bold)
                Text("iOS developer")
            }
        }
        .padding(.horizontal, 90)

    }
}

#Preview {
    ImagePicker()
}
