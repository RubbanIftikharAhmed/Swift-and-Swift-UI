//
//  ObservationBootcamp.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 22/07/2024.
//


//No need to use observedObject
//No need to use publised
//No need t0 use observableObject

import SwiftUI

struct FruitModels: Identifiable{
    let id: String = UUID().uuidString
    var fruitName: String
    var NoOfFruits: Int
}

@Observable class FruitViewModels{
    var fruitArray: [FruitModels] = []
    
    init(){
        addFruits()
    }
    
    func addFruits() {
        let apple = FruitModels(fruitName: "Apple", NoOfFruits: 1)
        let kiwi = FruitModels(fruitName: "Kiwi", NoOfFruits: 10)
        let oranges = FruitModels(fruitName: "Orange", NoOfFruits: 8)
        fruitArray.append(apple)
        fruitArray.append(kiwi)
        fruitArray.append(oranges)
    }
    //how to remoce
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}


struct ObservationBootcamp: View {
    var fruitViewModels: FruitViewModels = FruitViewModels()
    var body: some View {
        NavigationStack{
            NavigationStack{
                List{
                    ForEach(fruitViewModels.fruitArray) { fruits in
                        HStack(alignment: .center){
                            Text("\(fruits.NoOfFruits)")
                                .foregroundStyle(Color.black)
                            Text("\(fruits.fruitName)")
                                .font(.headline)
                        }
                    }
                    .onDelete { IndexSet in
                        fruitViewModels.deleteFruit(index: IndexSet)
                    }
                }
                //instead of using onAppear
                .navigationTitle("Fruit list")
            }
        }
    }
}

#Preview {
    ObservationBootcamp()
}
