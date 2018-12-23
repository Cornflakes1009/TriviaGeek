import Foundation

var teams = [Team]()

var currentTeam = 0

class Team {
    let teamName: String
    var teamScore = 0
    
    init(teamName: String) {
        self.teamName = teamName
    }
}

func cycleThroughTeams() {
    if currentTeam == teams.count - 1 {
        currentTeam = 0
    } else {
        currentTeam += 1
    }
}

