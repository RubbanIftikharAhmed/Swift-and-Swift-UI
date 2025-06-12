//
//  Heart-Icon.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 22/06/2024.
//

import SwiftUI

struct Heart_Icon: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(
                    gradient: Gradient(colors: [Color.purple, Color.blue ]),
                    startPoint:.topLeading,
                    endPoint:.bottomTrailing)
                )
                .frame(width: 100, height: 100)
                .shadow(
                    color: .purple,
                    radius: 5,
                    x: 0.0,
                    y: 0.0
                )
            
            Image(systemName: "heart.fill")
                .font(.largeTitle)
                .foregroundColor(Color.white)
            ZStack{
                Circle()
                    .fill(Color.blue)
                    .frame(width: 35, height: 35)
                Text("5")
                    .foregroundColor(.white)
            }
            .offset(x: 30, y: 35)
        }
    }
}

#Preview {
    Heart_Icon()
}

