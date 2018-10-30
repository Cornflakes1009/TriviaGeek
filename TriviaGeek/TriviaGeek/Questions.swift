//
//  File.swift
//  TriviaGeek
//
//  Created by Harold on 10/20/18.
//  Copyright © 2018 harold. All rights reserved.
//

import Foundation

var  questionArr = [Question]()

class Question {
    let question: String
    let answer: String
    
    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }
}

