//
//  animations.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 29/06/2024.
//

import SwiftUI

struct animations: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 50 : 100,
                    height: isAnimated ? 50: 100
                
                )
            Spacer()
        }
        
    }
}

#Preview {
    animations()
}
