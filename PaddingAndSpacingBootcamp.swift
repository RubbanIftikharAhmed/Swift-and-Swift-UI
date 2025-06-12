//
//  PaddingAndSpacingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 12/04/2024.
//

import SwiftUI

struct PaddingAndSpacingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Hello, World!, I am Rubban")
                .font(.title)
            
            
            Text("This is the description of what we will do in this task. We will align it to the leading edge. It encompases multiple lines")
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.2),
                    radius: 5,
                    x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 7
                       )
        )
        .padding(.horizontal, 10)
        
        
        

//            .background(Color.green)
//            .padding(.all, 5)
//            .padding(.top, 5)
//            .padding(.bottom, 5)
//            .background(Color.blue)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.leading, 10)
            //.background(Color.gray)
            
    }
}

#Preview {
    PaddingAndSpacingBootcamp()
}
