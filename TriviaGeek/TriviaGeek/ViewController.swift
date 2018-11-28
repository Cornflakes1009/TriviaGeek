//
//  ViewController.swift
//  TriviaGeek
//
//  Created by Harold on 10/20/18.
//  Copyright © 2018 harold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     // added for dismissing the keyboard when touching outside of the keyboard or text field
    func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.enterTeamName.resignFirstResponder()
    }
    
    

    @IBOutlet weak var enterTeamName: UITextField!
    @IBOutlet weak var teamLabelOne: UILabel!
    @IBOutlet weak var teamLabelTwo: UILabel!
    @IBOutlet weak var teamLabelThree: UILabel!
    @IBOutlet weak var teamLabelFour: UILabel!
    @IBOutlet weak var addTeamLabel: UIButton!
    @IBOutlet weak var chooseCategoryLabel: UIButton!
    
    @IBAction func addTeamBtn(_ sender: Any) {
        let teamTypedIn = enterTeamName.text?.trim()
        let newTeamCreated = Team(teamName: teamTypedIn!)
        
        if newTeamCreated.teamName != "" {
            teams.append(newTeamCreated)
        }
        enterTeamName.text = nil
        
        if teams.count >= 2 {
            chooseCategoryLabel.isEnabled = true
            chooseCategoryLabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
            chooseCategoryLabel.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        }
        if teams.count == 4 {
            addTeamLabel.isEnabled = false
        }
        updateTeamLabels()
    }
    
    @IBAction func chooseCategoryBtn(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseCategoryLabel.isEnabled = false
        chooseCategoryLabel.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
        chooseCategoryLabel.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0.8821885851, alpha: 1)
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    func updateTeamLabels() {
        if teams.count == 1 {
            teamLabelOne.text = teams[0].teamName
        } else if teams.count == 2 {
            teamLabelOne.text = teams[0].teamName
            teamLabelTwo.text = teams[1].teamName
        } else if teams.count == 3 {
            teamLabelOne.text = teams[0].teamName
            teamLabelTwo.text = teams[1].teamName
            teamLabelThree.text = teams[2].teamName
        } else if teams.count == 4 {
            teamLabelOne.text = teams[0].teamName
            teamLabelTwo.text = teams[1].teamName
            teamLabelThree.text = teams[2].teamName
            teamLabelFour.text = teams[3].teamName
        }
    }

}

