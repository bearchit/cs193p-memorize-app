//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mingoo Kim on 2022/06/05.
//

import SwiftUI

func makeCardContent(index: Int) -> String {
    return ""
}

class EmojiMemoryGame {
    static let emojis = ["🚲", "🚂", "🚁", "🚜", "🚖", "🚕", "🏎", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍","🛺", "🚠", "🛵", "🚗", "🚚", "🚔", "🚈"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> =
    MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
        emojis[pairIndex]
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
