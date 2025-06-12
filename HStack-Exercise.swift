//
//  HStack-Exercise.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 23/06/2024.
//

import SwiftUI

struct HStack_Exercise: View {
    var body: some View {
        ZStack{
            HStack(alignment: .center){
                Image("profilePicture")
                    .resizable()
                    .frame(width: 50, height: 90)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(.circle)
                Text("What's happening?")
                    .foregroundStyle(Color.gray)
                    .padding(.trailing, 40)
                ZStack{
                    RoundedRectangle(cornerRadius: 50)
                        .fill(.blue)
                        .frame(width: 90, height: 50)
                    Text("Tweet")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
            }
            .padding(.horizontal, 10)
        }
        .background(Color.white
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 0.3)
        )

    }
}

#Preview {
    HStack_Exercise()
}
