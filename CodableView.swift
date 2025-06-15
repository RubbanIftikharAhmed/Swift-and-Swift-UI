//
//  CodableView.swift
//  ContinuedLearning
//
//  Created by Rubban Iftikhar on 28/02/2025.
//

import SwiftUI

struct CustomerModel: Identifiable, Decodable, Encodable{
    let id: String
    let name: String
    let points: Int
    let isPremium: Bool
    
    enum CodingKeys: String, CodingKey{
        case id
        case name
        case points
        case isPremium
    }
    
    init(id: String, name: String, points: Int, isPremium: Bool){
        self.id = id
        self.name = name
        self.points = points
        self.isPremium = isPremium
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.points = try container.decode(Int.self, forKey: .points)
        self.isPremium = try container.decode(Bool.self, forKey: .isPremium)
    }
    
    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(points, forKey: .points)
        try container.encode(isPremium, forKey: .isPremium)
    }
}
//= CustomerModel(id: "1", name: "Rubban", points: 5, isPremium: true)

class CodableViewModel: ObservableObject{
    @Published var customer : CustomerModel? = nil
    init(){
        getData()
    }
    func getData(){
        guard let data = getGetJSONData() else {return}
        do{
            self.customer = try JSONDecoder().decode(CustomerModel.self, from: data)
        } catch let error{
            print("Error decoding \(error)")
        }
//        if
//        let localData = try? JSONSerialization.jsonObject(with: data, options: []),
//        let dictionary = localData as? [String: Any],
//        let id = dictionary["id"] as? String,
//        let name = dictionary["name"] as? String,
//        let points = dictionary["points"] as? Int,
//        let isPremium = dictionary["isPremium"] as? Bool{
//            
//            customer = CustomerModel(id: id, name: name, points: points, isPremium: isPremium)
//        }
        
//        print("JSON data: ")
//        print(data)
//        let jsonString = String(data: data, encoding: .utf8)
//        if let jsonstring = jsonString{
//            print(jsonstring)
//        }
    }
    
    
    func getGetJSONData() -> Data? {
        let customer = CustomerModel(id: "2", name: "Zarnab", points: 100, isPremium: true)
        
        let jsonData2 = try? JSONEncoder().encode(customer)
        
        
//        let dictionary: [String: Any] = [
//            "id":"1",
//            "name":"rubban",
//            "points": 100,
//            "isPremium": true
//        ]
//        let jsonData = try? JSONSerialization.data(withJSONObject: dictionary, options: [])
        
        return jsonData2
    }
}





struct CodableView: View {
    @StateObject var vm = CodableViewModel()
    var body: some View {
        VStack(){
            if let customer = vm.customer{
                Text(customer.id)
                Text(customer.name)
                Text("\(customer.points)")
                Text(customer.isPremium.description)
            }
        }
    }
}

#Preview {
    CodableView()
}
