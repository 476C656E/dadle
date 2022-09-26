//
//  MBTITypes.swift
//  dadle
//
//  Created by Glen on 2022/09/23.
//

import SwiftUI


struct MBTIPersonality {
    enum Attitude {
        case extraversion
        case introversion
    }
    
    enum Perception {
        case sensing
        case intuition
    }
    
    enum Judgment {
        case thinking
        case feeling
    }
    
    enum Lifestyle {
        case judging
        case perceiving
    }
    
    let attitude: Attitude
    let perception: Perception
    let judgment: Judgment
    let lifestyle: Lifestyle
}

// 하위 구조들을 어떻게 다룰지 고민을 더 해봐야 함
struct Test {
    var testId: Int
    var testName: String
    var testCompleted: Bool = false
    var question: Question
}

struct Question {
    var questionIndex: Int
    var question: String
    var currentQuestion: Bool = false
    var answer: Answer
}

struct Answer {
    // 구조 고민
}