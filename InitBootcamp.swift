//
//  InitBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 13/04/2024.
//

import SwiftUI

struct InitBootcamp: View {
    let backgroundColor: Color
    let number: String
    let fruitName : String
    
    init(number: String, fruit: Fruit){
        
        self.number = number
        if fruit == .apple || fruit == .Apple{
            self.fruitName = "Apples"
            self.backgroundColor = Color.red
        }
        else if fruit == .orange || fruit == .Orange{
            self.fruitName = "Orange"
            self.backgroundColor = Color.orange
        }
        else{
            self.fruitName = "No fruit"
            self.backgroundColor = .blue
        }
    }
    
    enum Fruit{
        case apple
        case Apple
        case Orange
        case orange
    }
    
    
    var body: some View {
        VStack(spacing: 8, content: {
            Text(number)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text(fruitName)
                .font(.title)
                .foregroundColor(.white)
        })
        .padding(.all, 10)
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

#Preview {
    
    VStack(spacing: 0, content: {
        InitBootcamp(number: "6", fruit: .Apple)
        InitBootcamp(number: "6", fruit: .Orange)
    })
 
}
