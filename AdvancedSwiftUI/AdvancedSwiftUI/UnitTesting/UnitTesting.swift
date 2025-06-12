//
//  UnitTesting.swift
//  AdvancedSwiftUI
//
//  Created by Rubban Iftikhar on 15/03/2025.
//

import SwiftUI

 

struct UnitTesting: View {
    @StateObject var vm: UnitTestingViewModel
    
    init(isPremium : Bool){
        _vm = StateObject(wrappedValue: UnitTestingViewModel(isPremium: isPremium ))
    }
    var body: some View {
        Text("\(vm.isPremium)")
    }
}

#Preview {
    UnitTesting(isPremium: true)
}
