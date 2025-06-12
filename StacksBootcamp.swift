//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 12/04/2024.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        //nil alomost equals 8 spacing. Manually set it to zero.
        //        VStack(alignment: .center, spacing: nil, content: {
//        VStack(alignment: .center, spacing: 0, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 50)
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 50)
//        })
        
//        VStack{
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 50)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 50)
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 50)
//        }
        
//        
//        ZStack{
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 350, height: 500)
//            VStack{
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 250, height: 100)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 150, height: 100)
//                
//                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
//                    Rectangle()
//                        .fill(Color.purple)
//                    .frame(width: 100, height: 100)
//                    Rectangle()
//                        .fill(Color.purple)
//                    .frame(width: 100, height: 100)
//                })
//
//            }
//        }
        
        HStack{
            Text("Items in your cart:")
                .foregroundColor(Color.gray)
                .font(.title)
            Text("5")
                .font(.title)
        }
        
    }
}

#Preview {
    StacksBootcamp()
}
