//
//  DownloadWithCombine.swift
//  ContinuedLearning
//
//  Created by Rubban Iftikhar on 03/03/2025.
//

import SwiftUI
import Combine


struct PostModel: Identifiable, Decodable{
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    init(userId: Int, id: Int, title: String, body: String) {
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
    
    enum CodingKeys: CodingKey{
        case userId
        case id
        case title
        case body
    }
    init(from decoder: any Decoder) throws{
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.userId = try container.decode(Int.self, forKey: .userId)
        self.id = try container.decode(Int.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.body = try container.decode(String.self, forKey: .body)
    }
    
}

class downloadWithCombineViewModel: ObservableObject{
    @Published var posts: [PostModel] = []
    //this is for the last step of combine
    var cancellables = Set<AnyCancellable>()
    
    init(){
        getPosts()
    }
    
    func getPosts(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        /*
         How combine works
         1. Subscribe to a magazine publisher
         2. Published would make the magazine behind the scene
         3. You would receive the package at your front door
         4. make sure the parcel isnt damadged
         5. make sure the magazine is what you subscribed to
         6. read the magazine
         7. This process is cancelable at any step
         */
        /*
         1. create published
         2. subsribe it on the background thread. dataTaskPublished also does that for us
         3. recieve it on main thread
         4. check if the parcel is good using tryMap to get the data
         5. decode the data into post model
         6. use it. Sink and put the item in our application
         7. store (Cancel the subscription if needed)
         */
        URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .tryMap { (data, response) -> Data in
                guard
                    let response = response as? HTTPURLResponse,
                    response.statusCode >= 200 && response.statusCode < 300
                else{
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: [PostModel].self, decoder: JSONDecoder())
            //.replaceError(with: [])
            .sink { (completion) in
                switch completion{
                case .finished:
                    print("Finished")
                    
                case .failure(let Error):
                    print("There was an error. \(Error)")
                }
            } receiveValue: { [weak self] (returnedPosts) in
                self?.posts = returnedPosts
            }
            .store(in: &cancellables)
    }
}

struct DownloadWithCombine: View {
    @StateObject var vm = downloadWithCombineViewModel()
    var body: some View {
        ScrollView{
            ForEach(vm.posts){ post in
                VStack(alignment: .leading){
                    Text(post.title)
                    Text(post.body)
                        .foregroundStyle(Color.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

#Preview {
    DownloadWithCombine()
}
