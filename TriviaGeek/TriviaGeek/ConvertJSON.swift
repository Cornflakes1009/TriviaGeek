//
//  GetHpJSON.swift
//  TriviaGeek
//
//  Created by Harold on 10/20/18.
//  Copyright © 2018 harold. All rights reserved.
//

import Foundation


func getJSON(jsonToRead: String) {
    guard let path = Bundle.main.path(forResource: jsonToRead, ofType: "json") else { return }
    let url = URL(fileURLWithPath: path)
    
    do {
        let data = try Data(contentsOf: url)
        let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        
        guard let jsonArray = json as? [Any] else { return }
        
        for questionAnswer in jsonArray {
            guard let questionAndAnswer = questionAnswer as? [String: Any] else { return }
            
            // assigning the values in the JSON to local variables
            guard let category = questionAndAnswer["category"] as? String else { return }
            guard let question = questionAndAnswer["question"] as? String else { return }
            guard let answer = questionAndAnswer["answer"] as? String else { return }
            
            // creating a new instance of the Question object
            let qa = Question(category: category, question: question, answer: answer)
            
            print(qa.category)
            print(qa.question)
            print(qa.answer)
            
            questionArr.append(qa)
            
        } // end of the for in loop
        
//        if categoryCount == 2 {
//            for _ in 1...30 {
//                let randomNum = (Int(arc4random_uniform(UInt32(jsonArray.count))) + 1)
//                print(randomNum)
//                questionsList.append(questionArr[randomNum])
//                questionArr.remove(at: randomNum)
//            }
//            print(questionsList)
//            print(questionsList.count)
//            print(questionArr.count)
//        }
        
        
        
        
    } catch {
        print(error)
    }
}
