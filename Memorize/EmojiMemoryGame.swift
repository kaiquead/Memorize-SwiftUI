//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kaique Alves on 01/07/20.
//  Copyright © 2020 Kaique Alves. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame{
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis: Array<String> = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Acess to the Model
    
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
