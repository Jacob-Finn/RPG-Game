//
//  RandomEvents.swift
//  RPG Game
//
//  Created by Jacob Finn on 8/17/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
private var eventChosen = -1
class RandomEvents
{
    static func randomNumberGenerator(maxNumber: Int) -> Int {
        let limit = UInt32(maxNumber)
        return Int(arc4random_uniform(limit)) + 1
    }
    static func ForestEvent()
    {
        eventChosen = RandomEvents.randomNumberGenerator(maxNumber: 3)
        if eventChosen == 1 {
            print("Nothing happens. So, you had a nice walk!")
        }else if eventChosen == 2 {
            print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
            print("An enemy goblin appears! You better get ready for a fight!")
            let goblin = Enemy(health: 50, name: "Goblin", defence: 1, damage: 5, dead: false)
            Battle.startBattle(player: playerOne, enemy: goblin)
        }
        else if eventChosen == 3 {
            print("You happen to fumble across a gold stash! You pick up 5 coins.")
            playerOne.addCoins(coinsToAdd: 5)
            
        }
        
    }
    
    
    
    
}

