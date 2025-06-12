//
//  SheetsBootcamp.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 30/06/2024.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            background(
                Color.green
                    .ignoresSafeArea()
            )
            VStack{
                Button {
                    showSheet.toggle()
                } label: {
                    Text("Button")
                        .foregroundColor(Color.green)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
            //there can only be one screen
            .sheet(isPresented: $showSheet) {
                secondScreen()
            }
        }
    }
}

struct secondScreen: View{
    var image: String = "cat"
    var name: String =  "Oliver"
    var mutualFriends: Int = 3
    var body: some View{
        VStack(alignment: .leading){
            Image("\(image)")
                .resizable()
                .frame(width: 130, height: 110)
                .scaledToFill()
            VStack(alignment: .leading){
                Text("\(name)")
                    .fontWeight(.bold)
                Text("\(mutualFriends) mutual friends")
                    .font(.caption)
                    .foregroundColor(Color.gray)
                Text("Add Friend")
                    .frame(width: 100,height: 30)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(2)
            }
            .padding(.leading, 7)
        }
        .padding(.bottom, 14)
        .background(
            Color.white
                .shadow(color: Color.black.opacity(0.2),
                        radius: 5,
                        x: 0.0, y: 0.2)
        
        )

    }
}

#Preview {
    SheetsBootcamp()
}
