//
//  ReusableActionSheet.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 14/07/2024.
//

import SwiftUI

struct ReusableActionSheet: View {
    @State var showActionSheet: Bool = false
    var body: some View {
        VStack{
            Button {
                showActionSheet = true
            } label: {
                Image(systemName: "person.fill")
                    .font(.largeTitle)
            }
            .confirmationDialog("", isPresented: $showActionSheet, titleVisibility: .visible) {
                //
                VStack{

                    Button("Delete Post", role: .destructive) {
                        //delete post
                    }
                    
                    Button("Save Post", role: .cancel) {
                        //saves post
                    }
                    Button("Dismiss", systemImage: "person.fill", role: .none) {
                        
                    }
                }

            } message: {

            }

            
        }
    }
}

#Preview {
    ReusableActionSheet()
}

