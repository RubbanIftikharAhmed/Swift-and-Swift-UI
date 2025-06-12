//
//  UnitTestingViewModelFile.swift
//  AdvancedSwiftUI
//
//  Created by Rubban Iftikhar on 15/03/2025.
//

import Foundation
import SwiftUI


enum dataError : LocalizedError, Equatable {
    case noData
    case itemNotFound
}

class UnitTestingViewModel: ObservableObject{
    @Published var isPremium : Bool
    @Published var dataArray : [String] = []
    @Published var selectedItem : String? = nil
    init(isPremium: Bool ){
        self.isPremium = isPremium
    }
    
    func addItem(item: String){
        self.dataArray.append(item)
    }
    
    func selectItem(item: String){
        var flag : Bool = false
        for element in dataArray {
            if item == element {
                self.selectedItem = item
                flag = true
            }
        }
        if flag == false {
            self.selectedItem = nil
        }
    }
    
    
    func saveItem(item: String) throws {
        var flag : Bool = false
        
        guard !item.isEmpty else {
            throw dataError.noData
        }
        
        
        for element in dataArray {
            if item == element {
                print ("Save data here")
                flag = true
            }
        }
        if flag == false {
            throw dataError.itemNotFound
        }
    }
}
