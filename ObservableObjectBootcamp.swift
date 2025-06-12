//
//  ObservableObjectBootcamp.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 21/07/2024.
//

import SwiftUI

struct FruitModel: Identifiable{
    let id: String = UUID().uuidString
    var fruitName: String
    var NoOfFruits: Int
}

class FruitViewModel: ObservableObject{
    @Published var fruitArray: [FruitModel] = []
    
    init(){
        addFruits()
    }
    
    func addFruits() {
        let apple = FruitModel(fruitName: "Apple", NoOfFruits: 1)
        let kiwi = FruitModel(fruitName: "Kiwi", NoOfFruits: 10)
        let oranges = FruitModel(fruitName: "Orange", NoOfFruits: 8)
        fruitArray.append(apple)
        fruitArray.append(kiwi)
        fruitArray.append(oranges)
    }
    //how to remoce
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ObservableObjectBootcamp: View {
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationStack{
            List{
                ForEach(fruitViewModel.fruitArray) { fruits in
                    HStack(alignment: .center){
                        Text("\(fruits.NoOfFruits)")
                            .foregroundStyle(Color.black)
                        Text("\(fruits.fruitName)")
                            .font(.headline)
                    }
                }
                .onDelete { IndexSet in
                    fruitViewModel.deleteFruit(index: IndexSet)
                }
            }
            //instead of using onAppear
            .navigationTitle("Fruit list")
        }
    }
}

#Preview {
    ObservableObjectBootcamp()
}
