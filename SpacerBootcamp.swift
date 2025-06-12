//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 12/04/2024.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.blue)
                Image(systemName: "gear")
            }
            .background(Color.gray)
        }
        Spacer()
            .frame(width: 10)
            .background(Color.green)
    }
}

#Preview {
    SpacerBootcamp()
}
