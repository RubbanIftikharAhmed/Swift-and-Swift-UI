//
//  buttonBootcamp.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 26/06/2024.
//

import SwiftUI

struct buttonBootcamp: View {
    @State var title: String = "Action?"
    var body: some View {
        VStack(spacing: 10){
            Text(title)
                .fontWeight(.semibold)
                .font(.title)
            Button("Press Me") {
                self.title = "Button was pressed"
            }
            
            Button {
                self.title = "Button 2 was pressed"
            }label: {
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            }

        }
    }
}

#Preview {
    buttonBootcamp()
}
