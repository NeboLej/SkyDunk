//
//  MainController.swift
//  SkyDunk
//
//  Created by Nebo on 01.09.2023.
//

import UIKit

final class MainController: BaseController<MainView> {
    
    var vm: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        subscribeLastGame()
    }
    
    private func subscribeLastGame() {
        vm.lastGame.subscribe { [weak self] game in
            if let game = game {
                DispatchQueue.main.async {
                    self?.mainView.lastGameView.bind(vm: game)
                }
            }
        } onError: { [weak self] error in
            DispatchQueue.main.async {
                self?.mainView.lastGameView.showError(error: error)
            }
        }
    }
}
