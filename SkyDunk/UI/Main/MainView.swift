//
//  MainView.swift
//  SkyDunk
//
//  Created by Nebo on 01.09.2023.
//

import UIKit
import SnapKit

class MainView: BaseView {
    
    private lazy var nameLab: UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.textAlignment = .center
        label.text = "SkyDunk"
        addSubview(label)
        return label
    }()
    
    override func layoutViews() {
        super.layoutViews()
        
        nameLab.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }

    }
}
