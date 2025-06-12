//
//  onTapGestureBootcamp.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 20/07/2024.
//

import SwiftUI

struct onTapGestureBootcamp: View {
    @State var likesCount: Int = 0
    @State var liked: Bool = false
    var body: some View {
        VStack(alignment: .leading){
            Image("cat")
                .resizable()
                .frame(width: 300, height: 240)
                .background(Color.green)
                .onTapGesture(count: 2) {
                    likesCount += 1
                    liked = true
                }
                .padding(.bottom,5)
            Image(systemName: liked ? "heart.fill" : "heart")
                .font(.headline)
                .onTapGesture(count: 1) {
                    if liked == true{
                        likesCount -= 1
                    }
                    else {
                        likesCount += 1
                    }
                }
            
            if likesCount != 0 {
                Text(
                    "\(likesCount) Likes"
                )
            }
        }
    }
}

#Preview {
    onTapGestureBootcamp()
}
