//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Doan Le Thieu on 3/24/18.
//  Copyright © 2018 Doan Le Thieu. All rights reserved.
//


import Foundation

class Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.name = name
        self.symbol = symbol
        self.description = description
        self.usage = usage
    }
}
