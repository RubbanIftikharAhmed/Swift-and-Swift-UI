//
//  InitPractice.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 24/06/2024.
//

import SwiftUI

struct InitPractice: View {
    let image: String
    let name: String
    let mutualFriends: Int
    
    init(image: String, name: String, mutualFriends: Int){
        self.image = image
        self.name = name
        self.mutualFriends = mutualFriends
    }
    
    var body: some View {
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
    HStack(spacing: 6){
        InitPractice(image: "cat", name: "Oliver", mutualFriends: 2)
        InitPractice(image: "orangeCat", name: "Mimi", mutualFriends: 3)
        InitPractice(image: "dog", name: "Rex", mutualFriends: 4)
    }
}
