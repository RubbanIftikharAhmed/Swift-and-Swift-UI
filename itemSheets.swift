//
//  itemSheets.swift
//  ContinuedLearning
//
//  Created by Rubban Iftikhar on 20/01/2025.
//

import SwiftUI

struct RandomModel2: Identifiable{
    let id = UUID().uuidString
    let title: String
}


struct itemSheets: View {
    @State private var selectedModel: RandomModel2? = nil
    var body: some View {
        VStack(spacing: 20){
            Button("Button 1") {
                selectedModel = RandomModel2(title: "Model 1")            }
            
            Button("Button 2") {
                selectedModel = RandomModel2(title: "Model 2")
            }
        }
        //here the selectedModel1 is the actual value of the selectedModel (the RandomModel2 instance), passed into the closure.
        .sheet(item: $selectedModel) { selectedModel1 in
            nextScreen2(selectedModel: selectedModel1)
        }
    }
}

#Preview {
    itemSheets()
}


struct nextScreen2: View{
    let selectedModel: RandomModel2
    var body: some View{
        Text(selectedModel.title)
    }
}
