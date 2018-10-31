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
    let category: String
    let question: String
    let answer: String
    
    init(category: String, question: String, answer: String) {
        self.category = category
        self.question = question
        self.answer = answer
    }
}

