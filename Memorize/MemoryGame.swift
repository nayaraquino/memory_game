//
//  MemoryGame.swift
//  Memorize
//
//  Created by Nayara Aquino on 07/02/21.
//

import Foundation

struct MemoryGame<CardContent>  {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card choosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent ) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
    }
}
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
