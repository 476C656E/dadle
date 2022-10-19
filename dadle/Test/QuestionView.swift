//
//  QuestionIView.swift
//  dadle/Users/kangmingyu/Desktop/dadle/dadle/Test/QuestionView.swift
//
//  Created by 강민규 on 2022/10/19.
//

import SwiftUI

struct QuestionView: View {
    @State private var index = 0
    var test : Test
    
    var body: some View {
        VStack{
            Text(test.title)
                .font(.largeTitle)
                .bold()
                .padding()
            Text("\(index + 1)번 질문")
                .font(.title2)
            Spacer()
            QuestionContentView(question: test.questions[index])
            Spacer()
            MBTIButtonView(index: $index)
            Spacer()
        }
    }
}

struct QuestionIView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(test: Test(id: "0", title: "r", questions: [Question(id: "1", content: "1", MBTIType: "1")]))
            
    }
}
