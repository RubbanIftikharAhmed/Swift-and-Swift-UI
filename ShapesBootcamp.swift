//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 08/04/2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        Capsule()
            .fill(.green)
            .frame(width: 100, height: 50)
            //.fill(.blue)
            //.trim(from: 0.5, to: 1.0)
            //.stroke(Color.red)
        
    }
}

#Preview {
    ShapesBootcamp()
}
