import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var startTimerLabel: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    var seconds = 15
    var timerIsRunning = false
    var timer = Timer()
    
    @objc func updateTimer() {
        if seconds >= 0 {
            startTimerLabel.setTitle("\(seconds).0", for: .normal)
            seconds -= 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let questionCategory = questionsToAnswer[currentQuestion].category
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
