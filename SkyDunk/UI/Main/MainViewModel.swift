//
//  MainViewModel.swift
//  SkyDunk
//
//  Created by Nebo on 01.09.2023.
//

import Foundation

class MainViewModel: BaseViewModel {
    
    var name: Observable<String> = Observable(value: "test name")
    
    override init() {
        super.init()
        DispatchQueue.global().asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.name.value = "oleg"
        }
    }
}
