//
//  Teams.swift
//  TriviaGeek
//
//  Created by Harold on 10/20/18.
//  Copyright © 2018 harold. All rights reserved.
//

import Foundation

var teams = [Team]()

class Team {
    let teamName: String
    var teamScore = 0
    
    init(teamName: String) {
        self.teamName = teamName
    }
}

