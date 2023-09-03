//
//  GameDTO.swift
//  SkyDunk
//
//  Created by Nebo on 03.09.2023.
//

import Foundation

protocol GameProtocol {
    var id: Int { get }
    var date: Date { get }
    var homeTeam: TeamDTO { get }
    var visitorTeam: TeamDTO { get }
    var homeTeamScore: Int { get }
    var visitorTeamScore: Int { get }
    var season: Int { get }
}

struct GameDTO: GameProtocol {
    
    let id: Int
    let date: Date
    let homeTeam: TeamDTO
    let visitorTeam: TeamDTO
    let homeTeamScore: Int
    let visitorTeamScore: Int
    let season: Int
    
    init(id: Int, date: Date, homeTeam: TeamDTO, visitorTeam: TeamDTO, homeTeamScore: Int, visitorTeamScore: Int, season: Int) {
        self.id = id
        self.date = date
        self.homeTeam = homeTeam
        self.visitorTeam = visitorTeam
        self.homeTeamScore = homeTeamScore
        self.visitorTeamScore = visitorTeamScore
        self.season = season
    }
}
