//
//  NavigationStackBootcamp.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 01/07/2024.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    var consoles: [Consoles] = [
        .init(name: "Xbox", ImageName: "xbox.logo", consoleColor: Color.green),
        .init(name: "Playstation", ImageName: "playstation.logo", consoleColor: Color.indigo),
        .init(name: "PC", ImageName: "pc", consoleColor: Color.pink),
        .init(name: "Mobile", ImageName: "iphone", consoleColor: Color.mint)
    ]
    
    var games : [Games] = [
        .init(title: "God of War", rating: 90.0),
        .init(title: "Red dead redemption 2", rating: 99.0),
        .init(title: "Fortnite", rating: 99.0)
    ]
    
    
    var body: some View {
        NavigationStack {
            List {
                Section("Platfroms") {
                    ForEach(consoles, id: \.name) { console in
                        NavigationLink(value: console) {
                            HStack(alignment: .center){
                                Image(systemName:console.ImageName)
                                Text("\(console.name)")
                                Spacer()
                            }
                            .foregroundColor(console.consoleColor)
                        }
                    }
                }
            }
            .navigationTitle("Gaming")
            //this takes in hashable entity which here is Console struct
            // then a View inside
            .navigationDestination(for: Consoles.self) { console in
                ConsoleView(console: Consoles(name: console.name, ImageName: console.ImageName, consoleColor: console.consoleColor))
            }

        }
    }
}



struct ConsoleView: View{
    var console: Consoles
    var body: some View{
        ZStack{
            console.consoleColor.ignoresSafeArea()
            Label(console.name, systemImage: console.ImageName)
                .font(.largeTitle).bold()
        }
        //.background(console.consoleColor)
        
    }
}


struct Consoles: Hashable{
    var name: String
    var ImageName: String
    var consoleColor: Color
}
struct Games: Hashable {
    var title: String
    var rating: Double
}
#Preview {
    NavigationStackBootcamp()
}
