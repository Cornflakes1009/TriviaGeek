import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startTimerLabel: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    var seconds = 15
    var timer = Timer()
    
    
    // timer methods
    @objc func updateTimer() {
        if seconds > 0 {
            seconds -= 1
            timerLabel.text = "\(seconds).0"
        }
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(QuestionViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryLabel.text = questionsToAnswer[currentQuestion].category
        questionLabel.text = questionsToAnswer[currentQuestion].question
        teamNameLabel.text = teams[currentTeam].teamName
    }
    
    @IBAction func startTimer(_ sender: Any) {
        runTimer()
        startTimerLabel.isEnabled = false
        
        startTimerLabel.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
        startTimerLabel.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
    }
    
}
