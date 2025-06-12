//
//  ContentView.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 18/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //component
            Text("Hello World")
            //.modifier
                .font(.title)
                .fontWeight(.medium)
        //this is not recommended
//                .font(.system(size: 30, weight: .bold, design: .serif))
            
        }
            
    }
}

#Preview {
    ContentView()
}
