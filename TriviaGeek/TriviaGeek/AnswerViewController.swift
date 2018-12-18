//
//  AnswerViewController.swift
//  TriviaGeek
//
//  Created by HaroldDavidson on 12/17/18.
//  Copyright © 2018 harold. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        categoryLabel.text = questionsList[currentQuestion].category
        questionLabel.text = questionsList[currentQuestion].question
        answerLabel.text = questionsList[currentQuestion].answer
        
    }

    
    
    
    @IBAction func nextQuestionSubmitted(_ sender: Any) {
    }
}
