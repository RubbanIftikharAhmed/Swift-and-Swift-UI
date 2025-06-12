//
//  NavigationStackBootcamp2.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 28/07/2024.
//

import SwiftUI

struct NavigationStackBootcamp2: View {
    @State var fruits: [String] = ["Banana", "Mango", "Melon"]
    var body: some View {
        NavigationStack{
            VStack(spacing: 35){
                Spacer()
                ForEach(fruits, id: \.self){ fruit in
                    NavigationLink(value: fruit) {
                        Text(fruit)
                    }
                }
                ForEach(0..<10) { value in
                    NavigationLink(value: value){
                        Text("Press me \(value+1)")
                    }
                }
                Spacer()
            }
            .navigationTitle("Practice")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Int.self) { intValues in
                intScreen(value: intValues)
            }
            .navigationDestination(for: String.self) { fruit in
                fruitScreen(fruit: fruit)
            }
        }
    }
}

struct fruitScreen: View{
    var fruit: String
    var body: some View{
        VStack{
            Text("I love \(fruit)")
        }
    }
}
struct intScreen: View{
    var value: Int
    var body: some View{
        VStack{
            Text("Hello this is me practicing lazy loading on the screen \(value+1) ")
        }
    }
}

#Preview {
    NavigationStackBootcamp2()
}
