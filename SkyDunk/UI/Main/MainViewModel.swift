//
//  MainViewModel.swift
//  SkyDunk
//
//  Created by Nebo on 01.09.2023.
//

import Foundation

class MainViewModel: BaseViewModel, LastGameListenerProtocol {
    
    private var gameService: GameServiceProtocol
    var lastGame: Observable<LastGameVM?> = Observable(value: nil)
    
    override init() {
        let repo = GameRepository()
        gameService = GameService(online: repo)
        super.init()

        let observable = gameService.getGames()
        
        observable.bind { games in
            let lastGame = games.first
            self.lastGame.value = lastGame != nil ? LastGameVM(game: lastGame!, parent: self) : nil
        }
    }
    
    //MARK: - LastGameListenerProtocol
    func clickLastGame(id: Int) {
        print(id)
    }
    
}
