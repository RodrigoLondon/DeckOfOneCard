//
//  DeckController.swift
//  DeckOfOneCard
//
//  Created by Lewis Jones on 26/09/2018.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import UIKit

class DeckController {
    private static let basURL = URL(string: "https://deckofcardsapi.com/api/deck/new/draw/?count=1")
    
    static func drawOneCard() -> Card? {
        guard let url = basURL else { return nil }
        
        let data = try! Data(contentsOf: url)
        
        let jsonDecoder = JSONDecoder()
        let deck = try! jsonDecoder.decode(Deck.self, from: data)
        
        return deck.cards.first
    }
    
    static func getImage(_ cardImageURL: String) -> UIImage? {
        guard let urlForImage = URL(string: cardImageURL) else { return nil }
        
        let imageData = try! Data(contentsOf: urlForImage)
        
        let image = UIImage(data: imageData)
        
        return image
        
    }
    
}

