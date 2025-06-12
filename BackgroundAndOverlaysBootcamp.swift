//
//  BackgroundAndOverlaysBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 12/04/2024.
//

import SwiftUI

struct BackgroundAndOverlaysBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 100, height: 100)
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//            )
//            .frame(width: 120, height: 120)
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
//            )
//        Circle()
//            .fill(Color.red)
//            .frame(width: 100, height: 100)
//            .overlay(
//            Text("Hello")
//                .font(.caption)
//                .foregroundColor(.white)
//            )
//            .background(
//            Circle()
//                .fill(
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//                )
//                .frame(width: 120, height: 120)
//            )
//        
//        RoundedRectangle(cornerRadius: 15.0)
//            .fill(Color.green)// main rectangle
//            .frame(width: 150, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//            )
//            .background(
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .fill(Color.red)
//                .frame(width: 200, height: 160)
//            , alignment: .bottom
//            )
        
        Image(systemName: "heart.fill")
            .frame(width: 50, height: 50)
            .foregroundColor(.white)
            .font(.title)
            .background(
            Circle()
                .fill(
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .shadow(color: .purple, radius: 10, x: 0.0, y: 0.0)
            )
            .overlay(
            Circle()
                .fill(Color.red)
                .frame(width: 15, height: 15)
                .overlay(
                Text("2")
                    .foregroundColor(.white)
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                )
            ,alignment: .bottomTrailing
            )
        
    }
}

#Preview {
    BackgroundAndOverlaysBootcamp()
}
