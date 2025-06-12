//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 13/04/2024.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: true, content:{
//            HStack(spacing: 50){
//                ForEach(0..<50){ index in
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: 150, height: 150)
//                }
//            }
//        })
        ScrollView(.vertical, showsIndicators: false, content:{
            LazyVStack{
                ForEach(0..<10){ index in
                    ScrollView(.horizontal, showsIndicators: false,
                               content: {
                        LazyHStack{
                            ForEach(0..<20){ index in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding(.all, 10)
                            }
                        }
                    })
                }
            }
            
        })
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}

