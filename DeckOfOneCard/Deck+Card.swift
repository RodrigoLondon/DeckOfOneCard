//
//  Deck+Card.swift
//  DeckOfOneCard
//
//  Created by Lewis Jones on 26/09/2018.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import Foundation


struct Deck: Codable {
    let cards: [Card]
}

struct Card: Codable {
    let image: String
    let value: String
    let suit: String
    let code: String
}


