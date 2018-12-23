import Foundation


func getJSON(jsonToRead: String) {
    // clearing out the questionArr before converting JSON
//    questionsList = [Question]()
    questionArr = [Question]()
    
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
            
            // appending the recently converted JSON object to an array of Question objects to pull questions from
            questionArr.append(qa)
            
        } // end of the for in loop
        
        // loop for picking 60 random questions from the questions array - this is for balancing the odds of picking random questions. For example, if there are 1000 questions of one category, you have the same odds of getting one of those questions vs a category with only 150 questions
        for _ in 1...60 {
            let randomNum = (Int(arc4random_uniform(UInt32(questionArr.count)))) // had + 1
            questionsList.append(questionArr[randomNum])
            questionArr.remove(at: randomNum)
        }
//        print("Question List array: \(questionsList.count) from ConvertJSON.swift")
//        getQuestionsFromConvertedJSON()

    } catch {
        print(error)
    }
}
