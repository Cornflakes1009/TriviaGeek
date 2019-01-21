import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
     // added for dismissing the keyboard when touching outside of the keyboard or text field - requires UITextFieldDelegate
    func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.enterTeamName.resignFirstResponder()
    }
    
    // function for dismissing the keyboard when clicking done - requires UITextFieldDelegate subclass and textFieldName.delegate = self added in ViewDidLoad
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    @IBOutlet weak var enterTeamName: UITextField!
    @IBOutlet weak var teamLabelOne: UILabel!
    @IBOutlet weak var teamLabelTwo: UILabel!
    @IBOutlet weak var teamLabelThree: UILabel!
    @IBOutlet weak var teamLabelFour: UILabel!
    @IBOutlet weak var addTeamLabel: UIButton!
    @IBOutlet weak var chooseCategoryLabel: UIButton!

    // method for limiting the number of characters in textfield
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = enterTeamName.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        return updatedText.count <= 12
    }
    
    
    @IBAction func addTeamBtn(_ sender: Any) {
        let teamTypedIn = enterTeamName.text?.trim()
        let newTeamCreated = Team(teamName: teamTypedIn!)
        
        if newTeamCreated.teamName != "" {
            teams.append(newTeamCreated)
        }
        enterTeamName.text = nil
        
        if teams.count == 4 {
            addTeamLabel.isEnabled = false
        } else if teams.count >= 2 {
            chooseCategoryLabel.isHidden = false
        }
        
        // dismisses keyboard when addTeamBtn pressed
        enterTeamName.resignFirstResponder()
        updateTeamLabels()
    }
    
    @IBAction func chooseCategoryBtn(_ sender: Any) {
        // performing a segue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterTeamName.delegate = self
        chooseCategoryLabel.isHidden = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func updateTeamLabels() {
        if teams.count == 1 {
            teamLabelOne.text = teams[0].teamName
        } else if teams.count == 2 {
            teamLabelTwo.text = teams[1].teamName
        } else if teams.count == 3 {
            teamLabelThree.text = teams[2].teamName
        } else if teams.count == 4 {
            teamLabelFour.text = teams[3].teamName
        }
    }

}

