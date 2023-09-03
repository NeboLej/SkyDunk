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
        
        vm.name.bind { it in
            DispatchQueue.main.async {
                self.mainView.nameLab.text = it
            }
        }
    }
}
