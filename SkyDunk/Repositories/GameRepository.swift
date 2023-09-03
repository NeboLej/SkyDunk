//
//  GameRepository.swift
//  SkyDunk
//
//  Created by Nebo on 03.09.2023.
//

import Foundation

protocol GameRepositoryProtocol {
    func getGames() -> Observable<[GameProtocol]>
}


class GameRepository: GameRepositoryProtocol {
    
    func getGames() -> Observable<[GameProtocol]> {
        let games: Observable<[GameProtocol]> = Observable(value: [])
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 3) {
            games.value = [
                GameDTO(id: 123, date: Date(), homeTeam: TeamDTO(id: 1234, name: "Denver", fullName: "Denver nag", abbreviation: "DEN", city: "DEnver", conference: .east, division: ""), visitorTeam: TeamDTO(id: 333, name: "Maiami", fullName: "Maiamo heart", abbreviation: "MAI", city: "Maiami", conference: .west, division: ""), homeTeamScore: 123, visitorTeamScore: 321, season: 2022),
                GameDTO(id: 123, date: Date(), homeTeam: TeamDTO(id: 1234, name: "Denver", fullName: "Denver nag", abbreviation: "DEN", city: "DEnver", conference: .east, division: ""), visitorTeam: TeamDTO(id: 333, name: "Maiami", fullName: "Maiamo heart", abbreviation: "MAI", city: "Maiami", conference: .west, division: ""), homeTeamScore: 123, visitorTeamScore: 321, season: 2022)]
        }
        return games
    }
    
}

