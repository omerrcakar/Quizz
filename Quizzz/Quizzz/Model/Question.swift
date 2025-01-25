//
//  Question.swift
//  Quizzz
//
//  Created by ÖMER  on 25.01.2025.
//

import Foundation


struct Question{
    let questionText: String
    let answer: String
    
    init(questionText: String, answer: String) {
        self.questionText = questionText
        self.answer = answer
    }
}
