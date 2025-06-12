//
//  VStack-Exercise.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 23/06/2024.
//

import SwiftUI

struct VStack_Exercise: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Request a ride now")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.vertical, 15)
                Text("Enter pickup destination")
                    .foregroundStyle(Color.gray)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 90)
                    .background(Color.white
                        .cornerRadius(5)
                        .shadow(color: Color.black.opacity(0.1), radius: 5,
                                x: 0.0, y: 0.0)
                    )
            
            Text("Enter destination")
                .foregroundStyle(Color.gray)
                .padding(.vertical, 10)
                .padding(.horizontal, 118)
                .background(Color.white
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5,
                            x: 0.0, y: 0.0)
                )
                .padding(.bottom, 20)
            HStack(spacing: 10){
                Text("Request Now")
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .cornerRadius(5)
                Text("Schedule for later")
                    .padding()
                    .foregroundColor(Color.black)
                    .background(Color.gray)
                    .cornerRadius(5)
            }
        }
    }
}

#Preview {
    VStack_Exercise()
}
