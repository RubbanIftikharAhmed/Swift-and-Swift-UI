//
//  Images.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 20/06/2024.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("shades")
            .resizable()
            .frame(width: 300, height: 400)
            .scaledToFit()
            //.cornerRadius(150)
            .clipShape(.circle)
        
    }
}

#Preview {
    Images()
}
