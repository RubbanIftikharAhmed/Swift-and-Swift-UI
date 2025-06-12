//
//  SystemIcons.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 20/06/2024.
//

import SwiftUI

struct SystemIcons: View {
    var body: some View {
        HStack{
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .font(.title)
                .scaledToFit()
            Spacer()
            Image(systemName: "person.fill.badge.plus")
                .resizable()
                .renderingMode(.original)
                .frame(width: 100, height: 100)
                .scaledToFit()
                .foregroundColor(.blue)

        }
    }
}

#Preview {
    SystemIcons()
}
