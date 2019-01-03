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
    var timer = Timer()
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
        categoryLabel.text = questionCategory
        questionLabel.text = questionsToAnswer[currentQuestion].question
        teamNameLabel.text = teams[currentTeam].teamName
        
        if(questionCategory == "Harry Potter") {
            setFont(labelToUpdate: categoryLabel, fontName: "Parry Hotter", fontSize: 50, fontColor: #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1))
//            color is lemon
        }
        if(questionCategory == "Star Wars") {
            setFont(labelToUpdate: categoryLabel, fontName: "StarJediHollow", fontSize: 50, fontColor: #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1))
        }
        // add comic book movies and Game of Thrones
        

    }
    
    @IBAction func startTimer(_ sender: Any) {
        runTimer()
        startTimerLabel.isEnabled = false
        
        startTimerLabel.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
        startTimerLabel.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
    }
    
}
