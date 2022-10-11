//
//  TestView.swift
//  dadle
//
//  Created by 강민규 on 2022/10/11.
//

import SwiftUI

struct TestView: View {
    func getJSON() -> String{
        guard let path = Bundle.main.path(forResource: "DummyData", ofType: "json") else {
            return "nil1"
        }
        
        guard let jsonString = try? String(contentsOfFile: path) else {
            return " nil2"
        }

        let decoder = JSONDecoder()
        let data = jsonString.data(using: .utf8)
        
        if let data = data,
           let test = try? decoder.decode([Test].self, from: data) {
            return "\(test.first)"
        }
//        // MARK: - cf) Encode
//
//        let dataModel = PersonModel(name: "sample", addressInfo: .init(contry: "contry", city: "city"), image: "03")
//        let encoder = JSONEncoder()
//        if let jsonData = try? encoder.encode(dataModel),
//           let jsonString = String(data: jsonData, encoding: .utf8) {
//            print(jsonString)
//        }
        return "end"
    }
    var body: some View {
        Text(getJSON())
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
