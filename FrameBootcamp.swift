//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 11/04/2024.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.red)
//         .frame(width: 200, height: 100, alignment: .topLeading)
//            .background(Color.blue)
//            .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
//            .background(Color.green)
            .frame(width: 100, height: 100)
            .background(Color.gray)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.blue)
            .frame(height: 200, alignment: .bottom)
            .background(Color.green)
            .frame(maxHeight: .infinity)
            .frame(maxWidth: .infinity)
            .background(Color.yellow)


        
        
        
    }
}

#Preview {
    FrameBootcamp()
}
