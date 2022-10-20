//
//  QuestionContentView.swift
//  dadle
//
//  Created by 강민규 on 2022/10/19.
//

import SwiftUI

struct QuestionContentView: View {

    var question : Question
    
    var body: some View {
        Text(question.content)
            .font(.headline)
    }
}

struct QuestionContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionContentView(question: Question(id: "1", content: "1", MBTIType: "1"))
    }
}
