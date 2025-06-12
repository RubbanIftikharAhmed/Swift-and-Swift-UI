//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 11/04/2024.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
        //most text you want to set them to primary.
            .fill(
                //Color.primary
                //this also changes color in light/dark mode.
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
                
            )
            .frame(width: 200, height: 100)
    }
}

#Preview {
    ColorsBootcamp()
}
