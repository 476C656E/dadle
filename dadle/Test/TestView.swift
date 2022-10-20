//
//  TestView.swift
//  dadle
//
//  Created by 강민규 on 2022/10/11.
//

import SwiftUI

struct TestView: View {
    @EnvironmentObject private var model : Model

    var body: some View {
        NavigationView{
            List{
                ForEach(model.tests) { test in
                    NavigationLink {
                        QuestionView(test: test)
                    } label: {
                        Text(test.id)
                        Text(test.title)
                    }
                    .navigationTitle("Test")
                }
            }
        }
    }

}


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
            .environmentObject(Model())
    }
}
