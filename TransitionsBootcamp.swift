//
//  TransitionsBootcamp.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 30/06/2024.
//

import SwiftUI

struct TransitionsBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack {
            VStack{
                Button {
                    withAnimation() {
                        showView.toggle()
                    }
                } label: {
                    Text("Button")
                }
                Spacer()
                if showView {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: UIScreen.main.bounds.height*0.5)
                        .transition(.move(edge: .bottom))
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionsBootcamp()
}
