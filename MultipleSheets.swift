//
//  MultipleSheets.swift
//  ContinuedLearning
//
//  Created by Rubban Iftikhar on 20/01/2025.
//

import SwiftUI


struct RandomModel: Identifiable{
    let id = UUID().uuidString
    let title: String
}


//YOU CAN ONLY HAVE ONE SHEET PER A VIEW HEIRARCHI
//MEANING IS A VSTACK HAS A SHEET. THERE CAN NOT BE A SHEET INSIDE IT
//i.e NO parent child sheets


struct MultipleSheets: View {
    @State var selectedModel = RandomModel(title: "Starting title")
    @State private var showSheet1: Bool = false
    @State private var showSheet2: Bool = false

    var body: some View {
        VStack(spacing: 20){
            Button("Button 1") {
                selectedModel = RandomModel(title: "Model 1")
                showSheet1 = true
            }
            .sheet(isPresented: $showSheet1) {
                nextScreen(selectedModel: $selectedModel)
            }
            
            Button("Button 2") {
                selectedModel = RandomModel(title: "Model 2")
                showSheet2 = true
            }
            .sheet(isPresented: $showSheet2) {
                nextScreen(selectedModel: $selectedModel)
            }
        }
    }
}


struct nextScreen: View{
    @Binding var selectedModel: RandomModel
    var body: some View{
        Text(selectedModel.title)
    }
}
#Preview {
    MultipleSheets()
}
