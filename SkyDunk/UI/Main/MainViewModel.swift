//
//  MainViewModel.swift
//  SkyDunk
//
//  Created by Nebo on 01.09.2023.
//

import Foundation

final class MainViewModel: BaseViewModel, LastGameListenerProtocol {
    
    private var gameService: GameServiceProtocol
    var lastGame: Observable<LastGameVM?> = Observable(value: nil)
    
    override init() {
        let repo = GameRepository()
        gameService = GameService(online: repo)
        
        super.init()
        weak var _self = self

        gameService.getGames()
            .subscribe { games in
                guard let lastGame = games.first else { return }
                self.lastGame.value = LastGameVM(game: lastGame, parent: _self)
            } onError: { error in
                self.lastGame.error = error
            }
    }
    
    //MARK: - LastGameListenerProtocol
    func clickLastGame(id: Int) {
        print(id)
    }
    
}
