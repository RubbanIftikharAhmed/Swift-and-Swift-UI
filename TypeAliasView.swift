//
//  TypeAliasView.swift
//  ContinuedLearning
//
//  Created by Rubban Iftikhar on 27/02/2025.
//

import SwiftUI

struct Movie{
    let title: String
    let director: String
    let count: Int
}
typealias Tvshows = Movie
struct TypeAliasView: View {
    @State var movie : Movie = Movie(title: "Autobiography", director: "Rubban", count: 0)
    
    @State var tvshows : Tvshows = Tvshows(title: "Autobiography", director: "Rubban", count: 0)
    
    var body: some View {
        VStack{
            Text(movie.title)
            Text(movie.director)
            Text("\(movie.count)")
        }
    }
}

#Preview {
    TypeAliasView()
}
