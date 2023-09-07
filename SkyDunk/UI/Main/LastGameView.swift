//
//  LastGameView.swift
//  SkyDunk
//
//  Created by Nebo on 03.09.2023.
//

import UIKit
import SnapKit

class LastGameView: UIView {
    
    lazy var nameLab: UILabel = {
        let label = UILabel()
        label.text = "КРАЙНЯЯ ИГРА"
        label.font = UIFont(name: "Inter-Light", size: 18)
        label.textColor = UIColor.MyColor.textBlack
        label.textAlignment = .center
        addSubview(label)
        return label
    }()
    
    lazy var scoreLab: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Inter-Medium", size: 20)
        label.textColor = UIColor.MyColor.textBlack
        label.textAlignment = .center
        addSubview(label)
        return label
    }()
    
    lazy var dateLab: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Inter-ExtraLight", size: 15)
        label.textColor = UIColor.MyColor.textBlack
        label.textAlignment = .center
        addSubview(label)
        return label
    }()
    
    lazy var homeTeamImage: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        addSubview(iv)
        return iv
    }()
    
    lazy var visitorTeamImage: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        addSubview(iv)
        return iv
    }()
    
    lazy var loaderView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView()
        view.style = .medium
        view.startAnimating()
        addSubview(view)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initConstraint()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(vm: LastGameVM) {
        loaderView.isHidden = true
        homeTeamImage.image = UIImage(named: vm.homeTeamLogo)
        visitorTeamImage.image = UIImage(named: vm.visitorTeamLogo)
        scoreLab.text = vm.score
        dateLab.text = vm.date.toSimpleDate()
    }
    
    private func setupView() {
        backgroundColor = UIColor.MyColor.backgroundGray
        layer.cornerRadius = 10
        layer.addShadow()
    }

    private func initConstraint() {
        
        nameLab.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(16)
        }
        
        scoreLab.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        dateLab.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(16)
        }
        
        homeTeamImage.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.centerY.equalToSuperview()
            make.height.equalTo(60)
            make.width.equalTo(100)
        }
        
        visitorTeamImage.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
            make.height.equalTo(60)
            make.width.equalTo(100)
        }
        
        loaderView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
