//
//  NavigationViewBootcamp.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 01/07/2024.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView {
                NavigationLink("Check product catalog") {
                    FullScreenPractice()
                }
            }
            .navigationTitle("Products")
            
            .navigationBarItems(
                trailing: NavigationLink(
                    destination: selectCategory(),
                  label: {
                      Image(systemName: "line.3.horizontal.decrease.circle")
                })
                .accentColor(Color.red)
            )
            
        }
    }

}

#Preview {
    NavigationViewBootcamp()
}
