//
//  GameResultsViewController.swift
//  TriviaGeek
//
//  Created by HaroldDavidson on 12/19/18.
//  Copyright © 2018 harold. All rights reserved.
//

import UIKit

class GameResultsViewController: UIViewController {

    @IBOutlet weak var firstPlaceLabel: UILabel!
    @IBOutlet weak var secondPlaceLabel: UILabel!
    @IBOutlet weak var thirdPlaceLabel: UILabel!
    @IBOutlet weak var fourthPlaceLabel: UILabel!
    @IBOutlet weak var startNewGameLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewGameLabel.isOpaque = true
    }

    @IBAction func startNewGameBtn(_ sender: Any) {
    }
}
