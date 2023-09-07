//
//  LastGameVM.swift
//  SkyDunk
//
//  Created by Nebo on 07.09.2023.
//

import Foundation

class LastGameVM {
    
    private let id: Int
    
    let date: Date
    let homeTeamLogo: String
    let visitorTeamLogo: String
    let score: String
    
    init(id: Int, date: Date, homeTeamLogo: String, visitorTeamLogo: String, homeTeamScore: Int, visitorTeamScore: Int) {
        self.id = id
        self.date = date
        self.homeTeamLogo = homeTeamLogo
        self.visitorTeamLogo = visitorTeamLogo
        self.score = "\(homeTeamScore) : \(visitorTeamScore)"
    }
    
    convenience init(game: Game) {
        self.init(id: game.id, date: game.date, homeTeamLogo: game.homeTeam.abbreviation, visitorTeamLogo: game.visitorTeam.abbreviation, homeTeamScore: game.homeTeamScore, visitorTeamScore: game.visitorTeamScore)
    }
}
