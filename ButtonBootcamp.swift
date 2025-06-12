//
//  ButtonBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rubban Iftikhar on 20/04/2024.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "This is my title"
    var body: some View {
        VStack(spacing: 15) {
            Text(title)
            Button("Press Me") {
                self.title = "Button was pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Save button was pressed"
            }, label: {
                Text("Save".uppercased())
                    .fontWeight(.semibold)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 15)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
                                 
            })
            
            Button(action: {
                self.title = "Button 3"
            }, label: {
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 75, height: 75)
                        .shadow(radius: 10)
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                
                }
            })
            Button {
                self.title = "Button 4"
            } label: {
                Text("Finish".uppercased())
                    .foregroundColor(.gray)
                    .font(.caption)
                    .bold()
                    .padding()
                    .padding(.horizontal, 15)
                    .background(
                         Capsule()
                        .stroke(Color.gray, lineWidth: 2.0)
                        
                        
                    )
            }

        }
    }
}

#Preview {
    ButtonBootcamp()
}
