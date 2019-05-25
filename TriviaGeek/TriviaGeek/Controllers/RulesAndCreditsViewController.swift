//
//  RulesAndCreditsViewController.swift
//  TriviaGeek
//
//  Created by HaroldDavidson on 4/6/19.
//  Copyright © 2019 harold. All rights reserved.
//

import UIKit

class RulesAndCreditsViewController: UIViewController {
    
    
    @IBOutlet weak var textSection: UITextView!
    
    
    func setRuleText() {
        textSection.text = "Rules \n\n 1. Choose a moderator. The moderator will be responsible for reading the questions to each team, marking the questions as answered correctly or incorrectly, starting the timer, and announcing the winner. \n\n 2. Divide the players up between two and four teams. Enter each team name on the home screen and click the Choose Categories button. \n\n 3. Choose at least one category. Questions will be randomly selected based on the categories chosen. There will be 15 questions selected per team. \n\n 4. Time to ask and answer questions. Check the label of the question screen to see whose turn it is. Read the question and press the Start Timer button. The team will have 15 seconds to discuss amonst themselves to answer the question. \n\n 5. Once the team has answered the question, press the Reveal Answer button. Press the Correct or Incorrect button depending on the answer provided by the team. \n\n 6. Once all of the questions have been answered, the final results will be displayed and the moderator will announce the winner. Thanks and happy playing"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setRuleText()
        textSection.isUserInteractionEnabled = false // must be inside of function
    }
    
    @IBAction func switchViewAction(_ sender: Any) {
        switch (sender as AnyObject).selectedSegmentIndex {
        case 0:
            setRuleText()
        default:
                textSection.text = "Credits\n\nConcept and Development \n\n Harold Davidson \n\n Data Sourcing Rechie Paches \n\n Harold Davidson \n\n Design \n\n Tim Deters"
        }
    }
    
}
