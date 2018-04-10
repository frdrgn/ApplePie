//
//  Game.swift
//  Apple Pie
//
//  Created by Mikk Noorkõiv on 22/03/2018.
//  Copyright © 2018 Mikk Noorkõiv. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    mutating func playerGuessed(letter: Character) { // Method can change self's variable
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)" // Append already guessed letters in word
            } else {
                guessedWord += "_" // Hide letters not guessed
            }
        }
        return guessedWord
    }
}
