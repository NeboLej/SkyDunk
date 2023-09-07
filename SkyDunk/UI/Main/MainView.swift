//
//  MainView.swift
//  SkyDunk
//
//  Created by Nebo on 01.09.2023.
//

import UIKit
import SnapKit

class MainView: BaseView {
    
    lazy var nameLab: UILabel = {
        var label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.textAlignment = .center
        label.text = "SkyDunk"
        addSubview(label)
        return label
    }()
    
    lazy var lastGameView: LastGameView = {
        let view = LastGameView()
        addSubview(view)
        return view
    }()
    
    override func layoutViews() {
        super.layoutViews()
        
        backgroundColor = .white
        
        nameLab.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        lastGameView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(16)
            make.trailing.leading.equalToSuperview().inset(16)
            make.height.equalTo(160)
        }
    }
}
