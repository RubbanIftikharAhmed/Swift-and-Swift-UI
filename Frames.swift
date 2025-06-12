//
//  Frames.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 20/06/2024.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
        
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.yellow)
    }
}

#Preview {
    Frames()
}
