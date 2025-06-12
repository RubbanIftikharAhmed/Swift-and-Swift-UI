//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 11/04/2024.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("carti")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
            //.cornerRadius(100) // OR
            .clipShape(Circle())
        
        Image("carti1")
            //.renderingMode(.template)
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            //.foregroundColor(.)
    }
}

#Preview {
    ImageBootcamp()
}
