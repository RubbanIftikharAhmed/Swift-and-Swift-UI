//
//  Padding.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 23/06/2024.
//

import SwiftUI

struct Padding: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Hello World")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("This is the discription of what we will do on the screen. It is multi lines and we will align the text to the leading edge.")
        }
        .padding(.all, 10)
        .background(
             Color.white
                .cornerRadius(5)
                .shadow(color: Color.black.opacity(0.3),
                        radius: 10,
                        x: 0.0, y: 0.2)
                )
        
        
    }
}

#Preview {
    Padding()
}
