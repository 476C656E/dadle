//
//  Model.swift
//  dadle
//
//  Created by 강민규 on 2022/10/18.
//

import Foundation

class Model : ObservableObject {
    @Published var tests : [Test] = []
    
    init() {
        self.tests = getTests()
    }
    
    func getTests() -> [Test]{
        guard let path = Bundle.main.path(forResource: "DummyData", ofType: "json") else {
            return []
        }
        
        guard let jsonString = try? String(contentsOfFile: path) else {
            return []
        }

        let decoder = JSONDecoder()
        let data = jsonString.data(using: .utf8)
        
        if let data = data,
           let test = try? decoder.decode([Test].self, from: data) {
            
            return test
        }
//        // MARK: - cf) Encode
//
//        let dataModel = PersonModel(name: "sample", addressInfo: .init(contry: "contry", city: "city"), image: "03")
//        let encoder = JSONEncoder()
//        if let jsonData = try? encoder.encode(dataModel),
//           let jsonString = String(data: jsonData, encoding: .utf8) {
//            print(jsonString)
//        }
        return []
    }
    
}

