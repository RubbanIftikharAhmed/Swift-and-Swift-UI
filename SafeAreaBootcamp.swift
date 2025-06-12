//
//  SafeAreaBootcamp.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 26/06/2024.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ZStack{
            //background
            ScrollView {
                VStack{
                    Text("Title goes here")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 20)
                            .padding(20)
                    }
                }
            }
        }
        .background(
            Color.blue
                .ignoresSafeArea(edges: .all)
        )
    }
}

#Preview {
    SafeAreaBootcamp()
}
