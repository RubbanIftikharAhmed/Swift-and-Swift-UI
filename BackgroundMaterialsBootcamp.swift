//
//  BackgroundMaterialsBootcamp.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 24/07/2024.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 50,height: 4)
                    .padding(.top, 10)
                Spacer()
                
                
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
        }
        .ignoresSafeArea()
        .background(
        Image("cat")
        )
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
