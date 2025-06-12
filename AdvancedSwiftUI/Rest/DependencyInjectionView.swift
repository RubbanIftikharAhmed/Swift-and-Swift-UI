//
//  DependencyInjectionView.swift
//  AdvancedSwiftUI
//
//  Created by Rubban Iftikhar on 11/03/2025.
//

import SwiftUI
import Combine

struct PostModel2: Decodable{
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    
    enum CodingKeys: CodingKey{
        case userId
        case id
        case title
        case body
    }
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.userId = try container.decode(Int.self, forKey: .userId)
        self.id = try container.decode(Int.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.body = try container.decode(String.self, forKey: .body)
    }
}

class ProductionDataService{
    /*
     Singleton is a global variables
     
     */
    static let instance = ProductionDataService() // A singleton design pattern
    

    func fetchDataAsyncAwait() async throws -> Data{
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else{
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        return data
    }
    
    
    func fetchDataCombine() -> AnyPublisher <Data, Error> {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else{
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }
        return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .tryMap{ (data, response) -> Data in
                guard let response = response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode < 300 else{
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .eraseToAnyPublisher()
    }
}

class DependencyInjectionViewModel: ObservableObject{
    @Published var posts : [PostModel2] = []
    let loader = ProductionDataService()
    var cancellables = Set<AnyCancellable>()
    //post model2
    @Published var post : PostModel2?
    
    //init of the class can not be async
//    init() async {
//        try? await loadPosts()
//    }
    
    init(){
        Task{
            try await loadPosts()
        }
    }
    
    private func loadPostViaCombine(){
        var publisher = loader.fetchDataCombine()
        publisher
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                print("Finished")
                case .failure(let error):
                   print("\(error)")
                }
            }, receiveValue: { [weak self] data in
                do{
                    let decodedPost = try JSONDecoder().decode(PostModel2.self, from: data)
                    self?.post = decodedPost
                } catch let error{
                    print(error)
                }
        })
        .store(in: &cancellables)
    }
    
    
    
    
    
    private func loadPosts() async throws {
        do{
            let data: Data = try await loader.fetchDataAsyncAwait()
            let decodedPost = try JSONDecoder().decode(PostModel2.self, from: data)
            self.post = decodedPost
            if let post = post{
                posts.append(post)
            }
        } catch let error{
            throw error
        }
    }
}

struct DependencyInjectionView: View {
    @StateObject var vm = DependencyInjectionViewModel()
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DependencyInjectionView()
}
