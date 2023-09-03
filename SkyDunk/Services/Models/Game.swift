//
//  Game.swift
//  SkyDunk
//
//  Created by Nebo on 03.09.2023.
//

import Foundation

struct Game {
    
    let id: Int
    let date: Date
    let homeTeam: Team
    let visitorTeam: Team
    let homeTeamScore: Int
    let visitorTeamScore: Int
    let season: Int
    
    init(id: Int, date: Date, homeTeam: Team, visitorTeam: Team, homeTeamScore: Int, visitorTeamScore: Int, season: Int) {
        self.id = id
        self.date = date
        self.homeTeam = homeTeam
        self.visitorTeam = visitorTeam
        self.homeTeamScore = homeTeamScore
        self.visitorTeamScore = visitorTeamScore
        self.season = season
    }
    
    init(game: GameProtocol) {
        id = game.id
        date = game.date
        homeTeam = Team(team: game.homeTeam)
        visitorTeam = Team(team: game.visitorTeam)
        homeTeamScore = game.homeTeamScore
        visitorTeamScore = game.visitorTeamScore
        season = game.season
    }
}


