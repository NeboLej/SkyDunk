//
//  Date+.swift
//  SkyDunk
//
//  Created by Nebo on 04.09.2023.
//

import Foundation

fileprivate let DATE_FULL_YEAR_FMT: DateFormatter = {
    let fmt = DateFormatter()
    fmt.dateFormat = "dd.MM.yyyy"
    return fmt
}()

extension Date {
    
    func toSimpleDate() -> String {
        DATE_FULL_YEAR_FMT.string(from: self)
    }
    
}
