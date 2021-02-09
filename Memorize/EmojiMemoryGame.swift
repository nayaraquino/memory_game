//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nayara Aquino on 09/02/21.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    // var diferente de statc var estudar
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["😖","😳","😔","🤣","🥴","🪀","🔥","🤝🏻","🤡","🤙🏻"]
        return MemoryGame<String>(numberOfPairsOfCards: 10) {
            // é possivel trocar o pairIndex por um _ (estudar)
            pairIndex in
            return emojis[pairIndex]
        }
    }
        
    
    // mark: - access to the model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // mark: - intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
