import UIKit

class GameResultsViewController: UIViewController {

    @IBOutlet weak var firstPlaceLabel: UILabel!
    @IBOutlet weak var secondPlaceLabel: UILabel!
    @IBOutlet weak var thirdPlaceLabel: UILabel!
    @IBOutlet weak var fourthPlaceLabel: UILabel!
    @IBOutlet weak var startNewGameLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startComets(view: view)
        // sorting the teams so that the team with the highest score is at the top
        teams = teams.sorted(by: { $0.teamScore > $1.teamScore })
        firstPlaceLabel.text = "1st: \(teams[0].teamName) Score \(teams[0].teamScore)"
        secondPlaceLabel.text = "2nd: \(teams[1].teamName) Score: \(teams[1].teamScore)"
        
        if(teams.count == 3) {
            thirdPlaceLabel.text = "3rd: \(teams[2].teamName) Score: \(teams[2].teamScore)"
        }
        if(teams.count == 4) {
            thirdPlaceLabel.text = "4th: \(teams[3].teamName) Score: \(teams[3].teamScore)"
        }
    }

    @IBAction func startNewGameBtn(_ sender: Any) {
        teams.removeAll()
        questionsToAnswer.removeAll()
        currentTeam = 0
        currentQuestion = 0
        performSegue(withIdentifier: "restartGameSegue", sender: self)
    }
    
    
}
