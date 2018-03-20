//
//  Game.swift
//  ApplePie
//
//  Created by Doan Le Thieu on 3/20/18.
//  Copyright © 2018 Doan Le Thieu. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaing: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        
        if !word.contains(letter) {
            incorrectMovesRemaing -= 1
        }
    }
}
