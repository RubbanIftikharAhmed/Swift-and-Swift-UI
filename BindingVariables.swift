////
////  BindingVariables.swift
////  UIBootcampSwift
////
////  Created by Rubban Iftikhar on 29/06/2024.
////
//
//import SwiftUI
//
//struct BindingVariables: View {
//    @State var backgroundColor: Color = Color.pink
//    var body: some View {
//        ZStack{
//            background(
//                backgroundColor
//                    .ignoresSafeArea(edges: .all)
//                )
//            items(noOfItems: 1, fruitName: "Orange", fruitColor: Color.orange, backgroundColor: $backgroundColor)
//        }
//    }
//}
//
//
//
//
//struct items: View{
//    @State var noOfItems: Int
//    @State var fruitName: String
//    @State var fruitColor: Color
//    @Binding var backgroundColor: Color
//
//        var body: some View{
//            ZStack{
//                background(
//                    backgroundColor = Color.yellow
//                )
//            VStack{
//                Text("\(noOfItems)")
//                Text("\(fruitName)")
//            }
//            .padding()
//            .background(fruitColor)
//        }
//    }
//    
//}
//#Preview {
//    BindingVariables()
//}
