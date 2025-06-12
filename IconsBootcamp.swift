//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 11/04/2024.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")            .renderingMode(.original)
            .font(.title)
            .foregroundColor(.gray)
//            .frame(width: 100, height: 100)
//            .resizable()
//            .scaledToFill()
//            .font(.title)
//            .foregroundColor(.green)
//this wont work without the frame
    }
}

#Preview {
    IconsBootcamp()
}
