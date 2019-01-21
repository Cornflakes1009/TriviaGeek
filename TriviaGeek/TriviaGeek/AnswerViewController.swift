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
        let questionCategory = questionsToAnswer[currentQuestion].category
        teamLabel.text = teams[currentTeam].teamName
        categoryLabel.text = questionsToAnswer[currentQuestion].category
        questionLabel.text = questionsToAnswer[currentQuestion].question
        answerLabel.text = questionsToAnswer[currentQuestion].answer
        nextQuestionLabel.isHidden = true
        currentQuestion += 1
        
        
        
        if(questionCategory == "Harry Potter") {
            setFont(labelToUpdate: categoryLabel, fontName: "Parry Hotter", fontSize: 50, fontColor: #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)) // color is lemon
        }
        if(questionCategory == "Starwars") {
            setFont(labelToUpdate: categoryLabel, fontName: "StarJediHollow", fontSize: 50, fontColor: #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1))
        }
        if(questionCategory == "Game of Thrones") {
            setFont(labelToUpdate: categoryLabel, fontName: "Game of Thrones", fontSize: 27, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        }
        if (questionCategory == "Comic Book Movies") {
            setFont(labelToUpdate: categoryLabel, fontName: "Homoarakhn", fontSize: 50, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        }
    }

    
    @IBAction func correctButtonTouched(_ sender: Any) {
        if correct == false {
            nextQuestionLabel.isHidden = false
            correct = true
            incorrect = false
            correctButton.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
            correctButton.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            incorrectButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            incorrectButton.backgroundColor = #colorLiteral(red: 0.9992088675, green: 0.06886542588, blue: 0.06227394193, alpha: 1)
        }
        checkIfFinalQuestion()
    }
    
    @IBAction func incorrectButtonTouched(_ sender: Any) {
        if incorrect == false {
            nextQuestionLabel.isHidden = false
            incorrect = true
            correct = false
            incorrectButton.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
            incorrectButton.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            correctButton.setTitleColor(#colorLiteral(red: 0.9677025676, green: 1, blue: 0.9718639255, alpha: 1), for: .normal)
            correctButton.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        }
        checkIfFinalQuestion()
    }
    
    func checkIfFinalQuestion() {
        if questionsToAnswer.count == currentQuestion + 1 {
            nextQuestionLabel.setTitle("Show Results", for: .normal)
        }
    }

    @IBAction func nextQuestionSubmitted(_ sender: Any) {
        if correct == true {
            teams[currentTeam].teamScore += 1
        }
        cycleThroughTeams()
        if questionsToAnswer.count == currentQuestion + 1 {
            print("last question")
            performSegue(withIdentifier: "showResultsSegue", sender: self)
        } else {
            performSegue(withIdentifier: "nextQuestionSegue", sender: self)
        }
    }
}
