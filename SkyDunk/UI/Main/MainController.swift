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
        
        weak var _self = self
        
        vm.lastGame.bind { game in
            if let game = game {
                DispatchQueue.main.async { 
                    _self?.mainView.lastGameView.update(game: game)
                }
            }
        }
        
        vm.name.bind { it in
            DispatchQueue.main.async {
                print(it)
                self.mainView.nameLab.text = it
            }
        }
    }
}
