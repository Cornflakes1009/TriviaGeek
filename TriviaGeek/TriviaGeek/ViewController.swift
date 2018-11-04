//
//  ViewController.swift
//  TriviaGeek
//
//  Created by Harold on 10/20/18.
//  Copyright © 2018 harold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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

