//
//  MemoryGame.swift
//  cardzFlip
//
//  Created by Guilherme Takakuwa on 11/07/20.
//  Copyright © 2020 Guilherme Takakuwa. All rights reserved.
//

import Foundation

struct MemoryGame <CardContent>{
    var cards : Array<Card>
    
    func choose(card:Card){
        print("card chosen: \(card)")
    }
    
    init(numberOfPairOfCards:Int, cardContentFactory:(Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id:Int
    }
}
