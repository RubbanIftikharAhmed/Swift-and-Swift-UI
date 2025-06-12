//
//  UnwrapOptionalsBootcamp.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 20/07/2024.
//

import SwiftUI

struct UnwrapOptionalsBootcamp: View {
    @State var optionalString: String? = ""
    var body: some View {
        NavigationStack{
            VStack{
                Text("Practice safe coding")
                Text(
                    unwrapOptional(myVar: optionalString)
                )
                .font(.headline)
                Spacer()
            }
            .onAppear{
                optionalString = "hello world"
            }
            .navigationTitle("Safe Coding")
        }
    }
}

func unwrapOptional(myVar: String?) -> String{
    if let unwrappedVar = myVar  {
        return unwrappedVar
    }
    return ""
}

#Preview {
    UnwrapOptionalsBootcamp()
}

