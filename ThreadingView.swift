//
//  ThreadingView.swift
//  ContinuedLearning
//
//  Created by Rubban Iftikhar on 19/02/2025.
//

import SwiftUI

class backgroundThreadVM: ObservableObject{
    @Published var dataArray: [String] = []
    
    func fetchData(){
        DispatchQueue.global(qos: .background).async {
            let newData = self.downloadData()
         
            
            print("\(Thread.isMainThread)")
            print("\(Thread.current)")
            
            // any time we wanna make an update to the UI. All UI modifications happen on the main thread.
            DispatchQueue.main.async {
                self.dataArray = newData
                
                print("\(Thread.isMainThread)")
                print("\(Thread.current)")
            }
        }
    }
    
    private func downloadData() -> [String]{
        var data: [String] = []
        for x in 0..<100 {
            data.append("\(x)")
            print(data)
        }
        return data
    }
}


struct ThreadingView: View {
    @StateObject var vm = backgroundThreadVM()
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 10){
                Text("Load Data")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .onTapGesture {
                        vm.fetchData()
                    }
                ForEach(vm.dataArray, id: \.self){ item in
                    Text(item)
                        .font(.headline)
                        .foregroundStyle(Color.red)
                }
            }
        }
    }
}

#Preview {
    ThreadingView()
}
