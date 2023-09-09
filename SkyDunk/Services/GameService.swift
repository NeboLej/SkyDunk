//
//  GameService.swift
//  SkyDunk
//
//  Created by Nebo on 03.09.2023.
//

import Foundation

protocol GameServiceProtocol {
    func getGames() -> Observable<[Game]>
}

class GameService: GameServiceProtocol {
    
    private let online: GameRepositoryProtocol
    
    init(online: GameRepositoryProtocol) {
        self.online = online
    }
    
    func getGames() -> Observable<[Game]> {
        let games: Observable<[Game]> = Observable(value: [])
        
        
        online.getGames().subscribe { resGames in
            games.value = resGames.map({ game in Game(game: game) })
        } onError: { resError in
            games.error = resError
        }
        
        return games
    }
}
