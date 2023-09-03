//
//  Team.swift
//  SkyDunk
//
//  Created by Nebo on 03.09.2023.
//

import Foundation

struct Team {
    
    let id: Int
    let name: String
    let fullName: String
    let abbreviation: String
    let city: String
    let conference: ConferenceType
    let division: String

    init(id: Int, name: String, fullName: String, abbreviation: String, city: String, conference: ConferenceType, division: String) {
        self.id = id
        self.name = name
        self.fullName = fullName
        self.abbreviation = abbreviation
        self.city = city
        self.conference = conference
        self.division = division
    }
}
