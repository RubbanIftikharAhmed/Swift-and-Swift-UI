//
//  Shapes.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 18/06/2024.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack(spacing: 50){
            Circle()
            //            .fill(.blue)
                .frame(width: 100, height: 100)
                .foregroundColor(.pink)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(width: 200, height: 150)
                .shadow(radius: 10)
                .padding()
                
            
        }
    }
}

#Preview {
    Shapes()
}
