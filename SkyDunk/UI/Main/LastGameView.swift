//
//  LastGameView.swift
//  SkyDunk
//
//  Created by Nebo on 03.09.2023.
//

import UIKit
import SnapKit

final class LastGameView: UIView {
    
    lazy var nameLab: UILabel = {
        let label = UILabel()
        label.text = "КРАЙНЯЯ ИГРА"
        label.font = UIFont(name: UIFont.MyFont.extraLight, size: 18)
        label.textColor = UIColor.MyColor.textBlack
        label.textAlignment = .center
        addSubview(label)
        return label
    }()
    
    lazy var errorLab: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: UIFont.MyFont.regular, size: 20)
        label.font = .systemFont(ofSize: 20)
        label.textColor = UIColor.MyColor.textBlack
        label.textAlignment = .center
        label.numberOfLines = 0
        label.isHidden = true
        addSubview(label)
        return label
    }()
    
    lazy var scoreLab: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: UIFont.MyFont.medium, size: 20)
        label.textColor = UIColor.MyColor.textBlack
        label.textAlignment = .center
        addSubview(label)
        return label
    }()
    
    lazy var dateLab: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: UIFont.MyFont.extraLight, size: 15)
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
    
    private var vm: LastGameVM?
    
    func bind(vm: LastGameVM) {
        self.vm = vm
        homeTeamImage.image = UIImage(named: vm.homeTeamLogo)
        visitorTeamImage.image = UIImage(named: vm.visitorTeamLogo)
        scoreLab.text = vm.score
        dateLab.text = vm.date.toSimpleDate()
        toggleTeam(isHidden: false)
    }
    
    func showError(error: Error) {
        vm = nil
        errorLab.text = error.localizedDescription
        toggleTeam(isHidden: true)
    }
    
    private func toggleTeam(isHidden: Bool) {
        homeTeamImage.isHidden = isHidden
        visitorTeamImage.isHidden = isHidden
        scoreLab.isHidden = isHidden
        dateLab.isHidden = isHidden
        errorLab.isHidden = !isHidden
        loaderView.isHidden = true
    }
    
    @objc func onClick() {
        vm?.OnClick()
    }
    
    private func setupView() {
        backgroundColor = UIColor.MyColor.backgroundGray
        layer.cornerRadius = 10
        layer.addShadow()
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onClick)))
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
        
        errorLab.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.trailing.equalToSuperview().inset(16)
            make.leading.equalToSuperview().offset(16)
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
