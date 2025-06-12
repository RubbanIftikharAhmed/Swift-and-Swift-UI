//
//  BindingPractice.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 29/06/2024.
//

import SwiftUI

struct BindingPractice: View {
    @State var backgroundColor: Color = Color.black
    @State var imageName: String = "moon.star.fill"
    var body: some View {
        ZStack{
            background(
                backgroundColor
                .ignoresSafeArea(edges: .all)
            )
            mainScreen(imageName: $imageName, backgroundColor: $backgroundColor)
        }
    }
}

struct mainScreen: View{
    @Binding var imageName: String
    @Binding var backgroundColor: Color
    var body: some View{
        VStack(spacing: 20){
            Image(systemName: imageName)
                .renderingMode(.template)
            Button {
                backgroundColor = Color.blue
                imageName = "cloud.sun.fill"
            } label: {
                HStack(spacing: 5){
                    Image(systemName: "clock.fill")
                    Text("Change time of the day")
                        .foregroundColor(Color.white)
                }
                .padding()
                .padding(.horizontal, 10)
                .background(Color.green)
            }
        } //here
    }
}



#Preview {
    BindingPractice()
}
