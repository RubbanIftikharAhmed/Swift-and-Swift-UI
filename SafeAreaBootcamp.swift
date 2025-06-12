//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 15/04/2024.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
        
        ScrollView{
            VStack {
                Text("This is the title")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                
                
                ForEach(0..<10){ Index in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 150)
                        .padding(.vertical, 20)
                        .shadow(radius: 10)
                }
            }
            
        }
    }
}

#Preview {
    SafeAreaBootcamp()
}
