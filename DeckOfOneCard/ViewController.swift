//
//  ViewController.swift
//  DeckOfOneCard
//
//  Created by Lewis Jones on 26/09/2018.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func drawCardButtonPressed(_ sender: UIButton) {
        let card =  DeckController.drawOneCard()
        
        let image = DeckController.getImage(card!.image)
        cardImageView.image = image
    }
    
}

