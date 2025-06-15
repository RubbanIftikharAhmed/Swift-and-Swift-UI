//
//  WeakSelfView.swift
//  ContinuedLearning
//
//  Created by Rubban Iftikhar on 22/02/2025.
//

import SwiftUI

struct WeakSelfView: View {
    //key is count
    @AppStorage("count") var count: Int?
    //we are using AppStorage here because we are in a view
    
    init(){
        count = 0
    }
    
    var body: some View {
        NavigationView{
                NavigationLink {
                    SecondScreen()
                } label: {
                    Text("Navigate to second screen")
                }
        }
        .navigationTitle("Screen Navigation")
        .navigationBarTitleDisplayMode(.inline)
        .overlay(
            Text("\(count ?? 0)")
                .padding()
                .background(Color.green)
                .padding(.trailing, 15)
                .padding(.top, 15)
            ,alignment: .topTrailing
        )
    }
}


struct SecondScreen: View{
    
    @StateObject var vm = WeakSelfViewModel()
    var body: some View{
        Text("Second screen")
        if let data = vm.data{
            Text(data)
        }
    }
}


class WeakSelfViewModel: ObservableObject{
    @Published var data: String? = nil
    
    init(){
        getData()
        //we are using UserDefaults here because we are not in the view
        DispatchQueue.global(qos: .background).async{
            let currentUser = UserDefaults.standard.integer(forKey: "count")
            UserDefaults.standard.set(currentUser + 1, forKey: "count")
            print("Initializing now")
        }
    }
    
    deinit{
        DispatchQueue.global(qos: .background).async {
            let currentUser = UserDefaults.standard.integer(forKey: "count")
            UserDefaults.standard.set(currentUser - 1, forKey: "count")
            print("Deinitializing now!")
        }
    }
    
    func getData(){
        //the problem with this code is that it keeps the class alive if the data loading takes time
        // and by the time it does user might have gone to another screen and do not this information
        //but since we have used a self (strong reference); it kept the class alive
//        DispatchQueue.global().async{
//        }
//        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 500) { [weak self] in
            self?.data = "New data"
        }
    }
    
}
#Preview {
    WeakSelfView()
}
