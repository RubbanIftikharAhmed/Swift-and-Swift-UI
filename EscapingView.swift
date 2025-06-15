//
//  EscapingView.swift
//  ContinuedLearning
//
//  Created by Rubban Iftikhar on 27/02/2025.
//

import SwiftUI

class EscapingViewModel: ObservableObject{
    @Published var Text: String = "Hello"
    func getData(){
        
        //completionHandler: (_ data: String) ->Void
        //this function is this
//        downloadData2 { [weak self] data in
//            self?.Text = data
//        }
//        DownloadData3 { [weak self] data in
//            self?.Text = data
//        }
//        
        DownloadData4 {[weak self] DownloadResult in
            self?.Text = DownloadResult.data
        }
//        downloadData4(SendText: "Yo")
    }
    
    
    func downloadData()->String{
        return "new data"
    }
    
    
    func downloadData2(completionHandler: (_ data: String) ->Void){
        completionHandler("New data")
    }
    
    func DownloadData3(completionHandler: @escaping (_ data: String)->()){
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            completionHandler("New data returned after 2 seconds")
        }
    }
    
    
    func DownloadData4(completionHandler: @escaping (DownloadResult)->()){
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            let result = DownloadResult(data: "New Data returned after two seconds")
            completionHandler(result)
        }
    }
    
    func DownloadData5(completionHandler: @escaping (DownloadResult)->()){
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            let result = DownloadResult(data: "New Data returned after two seconds")
            completionHandler(result)
        }
    }
    //explain the _ before the parameter name
    //SendText here is the external name
    func downloadData6(SendText text: String){
        print(text)
    }
    
    //error code
//    func downloadData2()->String{
//        DispatchQueue.main.asyncAfter(deadline: .now + 2){
//            return "New data"
//        }
//    }
    
    
}

struct DownloadResult{
    let data: String
}
struct EscapingView: View {
    @StateObject var vm = EscapingViewModel()
    var body: some View {
        Text(vm.Text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .onTapGesture {
                vm.getData()
            }
    }
}

#Preview {
    EscapingView()
}
