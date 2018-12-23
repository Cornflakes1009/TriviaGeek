import UIKit

class AnswerViewController: UIViewController {
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var nextQuestionLabel: UIButton!
    @IBOutlet weak var correctButton: UIButton!
    @IBOutlet weak var incorrectButton: UIButton!
    
    var correct = false
    var incorrect = false
    override func viewDidLoad() {
        super.viewDidLoad()
        teamLabel.text = teams[currentTeam].teamName
        categoryLabel.text = questionsToAnswer[currentQuestion].category
        questionLabel.text = questionsToAnswer[currentQuestion].question
        answerLabel.text = questionsToAnswer[currentQuestion].answer
        nextQuestionLabel.isEnabled = false
        nextQuestionLabel.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
        nextQuestionLabel.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0.8821885851, alpha: 1)
    }
    
    func activateNextButton() {
        nextQuestionLabel.isEnabled = true
        nextQuestionLabel.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        nextQuestionLabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
    }
    @IBAction func correctButtonTouched(_ sender: Any) {
        activateNextButton()
        if correct == false {
            correct = true
            incorrect = false
            correctButton.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
            correctButton.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            incorrectButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            incorrectButton.backgroundColor = #colorLiteral(red: 0.9992088675, green: 0.06886542588, blue: 0.06227394193, alpha: 1)
        }
    }
    @IBAction func incorrectButtonTouched(_ sender: Any) {
        activateNextButton()
        if incorrect == false {
            incorrect = true
            correct = false
            incorrectButton.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
            incorrectButton.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            correctButton.setTitleColor(#colorLiteral(red: 0.9677025676, green: 1, blue: 0.9718639255, alpha: 1), for: .normal)
            correctButton.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        }
    }
    

    @IBAction func nextQuestionSubmitted(_ sender: Any) {
        if correct == true {
            teams[currentTeam].teamScore += 1
        }
        cycleThroughTeams()
        if questionsToAnswer.count == currentQuestion - 1 {
            // perform segue to final VC
            
            print("last question")
        } else {
            // perform segue to questions vc
            
            cycleThroughTeams()
        }
    }
}
