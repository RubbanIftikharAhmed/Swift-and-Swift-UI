//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 08/04/2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .font(.body)
            //.fontWeight(.medium)
            //.bold()
            //.underline(true, color: Color.red)
            //.strikethrough(true, color: Color.green)
            //.font(.system(size: 19, weight: .bold, design: .rounded))
            //.kerning(1)
            .baselineOffset(7)
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.red)
            .frame(width: 200 , height: 200, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
