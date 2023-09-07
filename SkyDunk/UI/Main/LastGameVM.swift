//
//  LastGameVM.swift
//  SkyDunk
//
//  Created by Nebo on 07.09.2023.
//

import Foundation

protocol LastGameListenerProtocol {
    func clickLastGame(id: Int)
}

class LastGameVM {
    
    private let id: Int
    
    let date: Date
    let homeTeamLogo: String
    let visitorTeamLogo: String
    let score: String
    
    let parent: Any?
    
    init(id: Int, date: Date, homeTeamLogo: String, visitorTeamLogo: String, homeTeamScore: Int, visitorTeamScore: Int, parent: Any?) {
        self.id = id
        self.date = date
        self.homeTeamLogo = homeTeamLogo
        self.visitorTeamLogo = visitorTeamLogo
        self.score = "\(homeTeamScore) : \(visitorTeamScore)"
        self.parent = parent
    }
    
    convenience init(game: Game, parent: Any?) {
        self.init(id: game.id, date: game.date, homeTeamLogo: game.homeTeam.abbreviation, visitorTeamLogo: game.visitorTeam.abbreviation, homeTeamScore: game.homeTeamScore, visitorTeamScore: game.visitorTeamScore, parent: parent)
    }
    
    func OnClick() {
        (parent as? LastGameListenerProtocol)?.clickLastGame(id: id)
    }
}
