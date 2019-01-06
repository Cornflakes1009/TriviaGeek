import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startTimerLabel: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    let questionCategory = questionsToAnswer[currentQuestion].category
    
    // timer methods and instance variables
    var seconds = 15
    var timerIsRunning = false
    var timer = Timer()
    
    @objc func updateTimer() {
        if seconds > 0 {
            seconds -= 1
            timerLabel.text = "\(seconds).0"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryLabel.text = questionCategory
        questionLabel.text = questionsToAnswer[currentQuestion].question
        teamNameLabel.text = teams[currentTeam].teamName
        
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
    
    @IBAction func startTimer(_ sender: Any) {
        if(timerIsRunning == false) {
            timerIsRunning = true
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(QuestionViewController.updateTimer)), userInfo: nil, repeats: true)
        } else if(timerIsRunning == true) {
            timerIsRunning = false
            timer.invalidate()
        }
    }
}
