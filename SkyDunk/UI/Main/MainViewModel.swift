//
//  MainViewModel.swift
//  SkyDunk
//
//  Created by Nebo on 01.09.2023.
//

import Foundation

class MainViewModel: BaseViewModel {
    
    var name: Observable<String> = Observable(value: "test name")
    var gameService: GameServiceProtocol
    
    
    override init() {
       
        let repo = GameRepository()
        gameService = GameService(online: repo)
        super.init()

        let observable = gameService.getGames()
        
        observable.bind { games in
            if let firstGame = games.first {
                self.name.value = firstGame.homeTeam.fullName
            }
        }
    }
}
