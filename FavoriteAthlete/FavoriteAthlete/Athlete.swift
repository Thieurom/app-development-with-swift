//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Doan Le Thieu on 3/23/18.
//

import Foundation

struct Athlete {
    var name: String
    var age: Int
    var league: String
    var team: String
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) for the \(league)."
    }
}
