//
//  DownloadWithEscaping.swift
//  ContinuedLearning
//
//  Created by Rubban Iftikhar on 01/03/2025.
//

import SwiftUI

//struct PostModel: Identifiable, Decodable{
//    let userId: Int
//    let id: Int
//    let title: String
//    let body: String
//    
//    init(userId: Int, id: Int, title: String, body: String) {
//        self.userId = userId
//        self.id = id
//        self.title = title
//        self.body = body
//    }
//    
//    enum CodingKeys: CodingKey{
//        case userId
//        case id
//        case title
//        case body
//    }
//    init(from decoder: any Decoder) throws{
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.userId = try container.decode(Int.self, forKey: .userId)
//        self.id = try container.decode(Int.self, forKey: .id)
//        self.title = try container.decode(String.self, forKey: .title)
//        self.body = try container.decode(String.self, forKey: .body)
//    }
//    
//}

class DownloadWithEscapingViewModel: ObservableObject{
    
    @Published var posts: [PostModel] = []
    init(){
        getPosts()
    }
    
    func getPosts(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        downloadData(fromURL: url) { returnedData in
            if let data = returnedData{
                guard let newPosts = try? JSONDecoder().decode([PostModel].self, from: data) else {return}
                DispatchQueue.main.async { [weak self] in
                    self?.posts = newPosts
                }
            } else {
                print("No data returned")
            }
        }

    }
    
    //fromURL is the external name of the function
    func downloadData(fromURL url: URL, completionHandler: @escaping(_ returnedData : Data?) -> ()){
        
        //this URLSession.shared.dataTask automatically shifts it to a background thread.
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                print("No data")
                completionHandler(nil)
                return
            }
            
            guard error == nil else{
                print("\(String(describing: error))")
                completionHandler(nil)
                return
            }
            
            guard let response = response as? HTTPURLResponse else{
                print("Invalid response")
                completionHandler(nil)
                return
            }
            
            guard response.statusCode >= 200 && response.statusCode < 300 else{
                print("Invalid response. Response should be 2xx but is \(response.statusCode)")
                completionHandler(nil)
                return
            }
            completionHandler(data)
            
        }.resume()
    }
}



struct DownloadWithEscaping: View {
    @StateObject var vm = DownloadWithEscapingViewModel()
    var body: some View {
        List{
            ForEach(vm.posts){ post in
                VStack{
                    Text(post.title)
                    Text(post.body)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

#Preview {
    DownloadWithEscaping()
}
