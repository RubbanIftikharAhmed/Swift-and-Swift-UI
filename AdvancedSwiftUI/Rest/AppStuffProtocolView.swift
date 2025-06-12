//
//  AppStuffProtocolView.swift
//  AdvancedSwiftUI
//
//  Created by Rubban Iftikhar on 11/03/2025.
//

import SwiftUI
protocol InstaFeedProtocol{
    var Likes : Int {get}
    var comments : Int {get}
    var shares : Int {get}
    var caption : String? {get set}
}

struct ReelModel : InstaFeedProtocol {
    var caption: String?
    var Likes: Int
    var comments: Int
    var shares: Int
    var reelLength : Int
    
}

//Instagram posts
struct PostModel : InstaFeedProtocol{
    var caption: String?
    var Likes : Int
    var comments : Int
    var shares : Int
}

class intagramFeedViewModel: ObservableObject{
    //Now in the feed view both reels and posts are presented together
    @Published var posts : [PostModel] = []
    @Published var reels : [ReelModel] = []
    var reel = ReelModel(caption: "Hi", Likes: 10, comments: 2, shares: 0, reelLength: 30)
    var post = PostModel(caption: "hello World", Likes: 10000, comments: 3000, shares: 6000)
    
    @Published var feedArray = [InstaFeedProtocol]()
    
    func feedPage() {
        posts.append(post)
        reels.append(reel)
        feedArray.append(contentsOf: posts)
        feedArray.append(contentsOf: reels)
        for content in feedArray{
            //issue is i can only access the protocol properties not the concrete class properties
            //print(content.)
            
            
            // in order to access the concrete class properties you need to do this 
            if let reel = InstaFeedProtocol.self as? ReelModel {
                print(reel.reelLength)
            }
        }
    }
}

protocol identifiable{
    var id: Int {get}
}
//Protocol are an abstract type
protocol ShapeProtocol{
    var side: Int {get}
    var name: String {get}
    func getArea() -> Int
}

//Structs are a concrete type.
struct RectangleModel: ShapeProtocol{
    let side : Int
    let name : String
    let width: Int
    let height : Int
    
    func getArea() -> Int{
        return width*height
    }
}

struct SquareModel : ShapeProtocol{
    let side: Int
    let length: Int
    let name: String
    
    func getArea() -> Int {
        return length * length
    }
    
    
}


class RectangleViewModel: ObservableObject{
    @Published var rectangle : RectangleModel = RectangleModel(side: 4, name: "Rectangle", width: 5, height: 3)
    @Published var square : SquareModel = SquareModel(side: 4, length: 2, name: "Square")
    
    
    @Published var shape = [ShapeProtocol]()
    //even though they are of different type since they share the same protocol or abstract class we can add them to one array.
    func addShapes(){
        shape.append(rectangle)
        shape.append(square)
    }
}


struct UserModel: identifiable, Hashable{
    let id: Int
    let name: String
    let age: Int
}


class UserViewModel: ObservableObject{
    @Published var users : [UserModel] = []
    
    let user1: UserModel = UserModel(id: 1, name: "Rubban", age: 21)
    
    func addUser() {
        self.users.append(user1)
    }
}

struct AppStuffProtocolView: View {
    @StateObject var vm = UserViewModel()
    var body: some View {
            List{
                ForEach(vm.users, id:\.self){ user in
                    Text(user.name)
                }
            }
        .onAppear{
            vm.addUser()
        }
    }
}

#Preview {
    AppStuffProtocolView()
}
