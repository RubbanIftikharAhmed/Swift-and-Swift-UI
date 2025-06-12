//
//  GradientBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 11/04/2024.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                LinearGradient(gradient: Gradient(colors: [Color(UIColor.systemBackground), Color.gray, Color.black]),
                               startPoint: .top,
                               endPoint: .bottom)
                
                
//                RadialGradient(gradient:Gradient(colors: [Color.blue, Color.red]), center: .topLeading, startRadius: 5, endRadius: 100)
                
                
//                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, angle: .degrees(90))
                                                         
            )
            .frame(width: 200, height: 100)
    }
}

#Preview {
    GradientBootcamp()
}
