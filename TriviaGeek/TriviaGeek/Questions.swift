import UIKit

// global variable for incrementing through questions
var currentQuestion = 0

// list of questions randomly selected from questionArr
var questionsList = [Question]()

// final list of questions to be asked
var questionsToAnswer = [Question]()

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

func getQuestionsFromConvertedJSON() {
    if teams.count == 4 {
        for _ in 1...60 {
            let randomNum = (Int(arc4random_uniform(UInt32(questionsList.count))))
            questionsToAnswer.append(questionsList[randomNum])
            questionsList.remove(at: randomNum)
        }
    } else if teams.count == 3 {
        for _ in 1...45 {
            let randomNum = (Int(arc4random_uniform(UInt32(questionsList.count))))
            questionsToAnswer.append(questionsList[randomNum])
            questionsList.remove(at: randomNum)
        }
    } else if teams.count == 2 {
        for _ in 1...30 {
            let randomNum = (Int(arc4random_uniform(UInt32(questionsList.count))))
            questionsToAnswer.append(questionsList[randomNum])
            questionsList.remove(at: randomNum)
        }
    }
    for i in questionsToAnswer {
        print(i.category)
    }
    print("questions to answer \(questionsToAnswer.count)")
}

