//
//  Functions.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 26/06/2024.
//

import SwiftUI

struct Functions: View {
    @State var title: String = "Title"
    @State var backgroundColor: Color = Color.pink
    
    func buttonPressed(){
        self.title = "Button was pressed"
        self.backgroundColor = Color.yellow
    }
    var contentLayer: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(edges: .all)
            VStack(spacing: 20){
                Text(title)
                    .font(.largeTitle)
                Button {
                    buttonPressed()
                } label: {
                    Text("Press Me")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                }
            }
        }
    }
    
    
    //this is what loads in the view. 
    var body: some View {
        contentLayer
    }
}


#Preview {
    Functions()
}
