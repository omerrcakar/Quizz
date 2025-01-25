//
//  QuizBrain.swift
//  Quizzz
//
//  Created by ÖMER  on 25.01.2025.
//

import Foundation

struct QuizBrain{
    let quiz = [
        Question(questionText: "Sharks are mammals.", answer: "False"),
        Question(questionText: "Sea otters have a favorite rock they use to break open food.", answer: "True"),
        Question(questionText: "The blue whale is the biggest animal to have ever lived.", answer: "True"),
        Question(questionText: "The hummingbird egg is the world's smallest bird egg.", answer: "True"),
        Question(questionText: "Bats are blind.", answer: "False"),
        Question(questionText: "A dog sweats by panting its tongue.", answer: "False"),
        Question(questionText: "The largest living frog is the Goliath frog of West Africa.", answer: "True"),
        Question(questionText: "An ant can lift 1,000 times its body weight.", answer: "False"),
        Question(questionText: "When exiting a cave, bats always go in the direction of the wind.", answer: "False"),
        Question(questionText: "Galapagos tortoises sleep up to 16 hours a day.", answer: "True"),
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }else{
            return false
        }
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].questionText
    }
    
    func getProgress() -> Float{
        return Float(questionNumber + 1)/Float(quiz.count)
    }
    
    mutating func nextQuestion(){
        if questionNumber == quiz.count - 1 {
            questionNumber = 0
            score = 0
        }else{
            questionNumber += 1
        }
    }
    
    func getScore() -> Int{
        return score
    }
}
