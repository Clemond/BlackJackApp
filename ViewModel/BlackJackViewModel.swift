//
//  BlackJackViewModel.swift
//  BlackJackApp
//
//  Created by Nicholas Nieminen Jönsson on 2024-10-04.
//

import Foundation

class BlackJackViewModel: ObservableObject {
    
    @Published var blackJackGame = BlackJackModel()
    
    var player = Player(name: "Nicholas", score: 0)
    
    let arrayOfNumberCards = Array(1...6).map { String($0) }
    let arrayOfFaceCards = ["J", "K", "Q"]
    
    func drawCard() {
        let allCardValues = arrayOfNumberCards + arrayOfFaceCards

        if let randomCard = allCardValues.randomElement() {
            blackJackGame.card = randomCard
        } else {
            print("Could not draw card")
        }
    }
    
}
