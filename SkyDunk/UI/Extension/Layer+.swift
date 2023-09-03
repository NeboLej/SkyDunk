//
//  Layer+.swift
//  SkyDunk
//
//  Created by Nebo on 04.09.2023.
//

import UIKit

extension CALayer {
    
    func addShadow() {
        self.shadowOffset = CGSize(width: 0, height: 4)
        self.shadowRadius = 5
        self.shadowOpacity = 1
        self.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.15).cgColor
    }
}
