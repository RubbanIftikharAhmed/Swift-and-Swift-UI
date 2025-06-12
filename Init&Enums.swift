//
//  Init&Enums.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 24/06/2024.
//

import SwiftUI

struct InitEnums: View {
    let items: Int
    let fruit: Fruits
    let backgroundColor: Color
    
    init(items: Int, fruit: Fruits){
        self.items = items
        self.fruit = fruit
        
        if fruit == .Apples {
            self.backgroundColor = Color.red
        }
        else {
            self.backgroundColor = Color.orange
        }
    }
    

    var body: some View {
        VStack{
            Text("\(items)")
                .foregroundColor(Color.white)
                .font(.largeTitle)
            Text("\(fruit)")
                .foregroundColor(Color.white)
                .font(.headline)
        }
        .padding(.all, 30)
        .background(backgroundColor)
        
    }
}
enum Fruits{
    case Apples
    case Orange
}

#Preview {
    HStack(spacing: 10){
        InitEnums(items: 25, fruit: .Orange)
        InitEnums(items: 20, fruit: .Apples)
        }
}
