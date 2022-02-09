//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by 박성원 on 2022/02/10.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz: [Question] = [
        Question(text: "Four + Two is equal to Six", answer: "True"),
        Question(text: "Five - Trhee is greater than One", answer: "True"),
        Question(text: "Three - Eight is less than Ten", answer: "False"),
    ]
    var questionNumber = 0
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if quiz[self.questionNumber].answer == userAnswer {
            if self.questionNumber + 1 < quiz.count {
                self.questionNumber = self.questionNumber + 1
            }
            return true
        }
        return false
    }
    
    func getQuestion () -> String {
        return self.quiz[self.questionNumber].text
    }
    
    
}
