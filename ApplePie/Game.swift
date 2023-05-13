//
//  Game.swift
//  Apple Pie
//
//  Created by BVU on 4/1/22.
//  Copyright © 2022 BVU. All rights reserved.
//

import Foundation

struct Game{
     var word: String
       var incorrectMovesRemaining: Int
       var guessedLetter: [Character]
       
       var formattedWord: String {
           var guessedWord = ""
           for letter in word {
               if guessedLetter.contains(letter){
                   guessedWord += "\(letter)"
               } else {
                   guessedWord += "_"
               }
           }
           return guessedWord
       }
       
       mutating func playerGuessed(letter: Character){
           guessedLetter.append(letter)
           if !word.contains(letter){
               incorrectMovesRemaining -= 1
           }
       }
}
