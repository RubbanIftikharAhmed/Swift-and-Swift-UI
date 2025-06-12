//
//  ScrollView.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 24/06/2024.
//

import SwiftUI

struct Scrollview: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30){
                ForEach (0..<50) { index in
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach (0..<50) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(color: Color.black.opacity(0.3), radius: 5,
                                            x: 0.2, y: 0.2)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Scrollview()
}
