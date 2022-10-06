//
//  MBTITypes.swift
//  dadle
//
//  Created by Glen on 2022/09/23.
//

import SwiftUI
// MARK: - 내부 로직
// 1. 데이터 베이스에서 Test만 들고온다
// 2. Test에 담겨있는 12개의 Question 배열에서 값을 꺼내온다.
// 3. Question 문제를 풀고 ,Type에 맞게 점수를 매긴다.
// 4. 최종 MBTI 결과를 TestResult에 담는다.
// 5. User의 데이터베이스에 TestResult를 추가한다.
// 6. User를 데이터베이스에 업로드한다.

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

struct MBTIPersonality {
    var attitude: Attitude
    var perception: Perception
    var judgment: Judgment
    var lifestyle: Lifestyle
}

//MARK: - API Model
// Request
struct Test {
    var testID: Int
    var testTitle: String
    var testCompleted: Bool
    var questions: [Question]
}

struct Question {
    var questionIndex: Int
    var questionTitle: String
    var questionContent : String
    var MBTIType: String
    
}

// Response
struct User {
    var userID : Int
    var userName : String
    var userResults : [TestResult]
}

struct TestResult {
    var testID : Int
    var MBTIResult : MBTIPersonality
}
