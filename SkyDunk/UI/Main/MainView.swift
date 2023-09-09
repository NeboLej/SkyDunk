//
//  MainView.swift
//  SkyDunk
//
//  Created by Nebo on 01.09.2023.
//

import UIKit
import SnapKit

final class MainView: BaseView {
    
    lazy var lastGameView: LastGameView = {
        let view = LastGameView()
        addSubview(view)
        return view
    }()
    
    override func layoutViews() {
        super.layoutViews()
        
        backgroundColor = .white
        
        lastGameView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(16)
            make.trailing.leading.equalToSuperview().inset(16)
            make.height.equalTo(160)
        }
    }
}
