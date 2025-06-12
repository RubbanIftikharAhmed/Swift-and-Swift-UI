//
//  ExtractSubViews.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 29/06/2024.
//

import SwiftUI

struct ExtractSubViews: View {

    var body: some View {
        ZStack{
            background(
                Color.pink
                    .ignoresSafeArea(edges: .all)
            )
            contentLayer
        }
    }
}

//this is used when items inside it are not changing
var contentLayer: some View{
    HStack(spacing: 10){
        Item(noOfItems: 2, fruitName: "Apples", backgroundColor: Color.red)
        Item(noOfItems: 12, fruitName: "Oranges", backgroundColor: Color.orange)
        Item(noOfItems: 1, fruitName: "Mangoes", backgroundColor: Color.yellow)
        
    }
}


//this is used if the items are to be changed so we need the struct.
struct Item: View{
    @State var noOfItems: Int
    @State var fruitName: String
    @State var backgroundColor: Color
    var body: some View{
        VStack{
            Text("\(noOfItems)")
            Text("\(fruitName)")
        }
        .padding()
        .background(backgroundColor)
    }
}

#Preview {
    ExtractSubViews()
}
