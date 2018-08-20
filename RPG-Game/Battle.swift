//
//  Battle.swift
//  RPG Game
//
//  Created by Jacob Finn on 8/19/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
private var playerChoice = -1
var playerCombatTurnEnded = false
class Battle {
    static func startBattle(player: Player, enemy: Enemy)
    {
        print(  """
                In battle you can only do a few things!
                1. Attack
                2. Defend
                3. Use Inventory item
                4. Run
                *Note, Only 1 & 2 are implemented currently!*
                """)
while !player.dead && !enemy.dead
        {
            repeat
            {
                playerChoice = InputManager.playerInput(numberOfChoices: 4)
                if playerChoice == 1
                {
                    player.dealDamage(target: enemy)
                    print("You attack the enemy \(enemy.name)! He has \(enemy.health) health remaining")
                    playerCombatTurnEnded = true
                }
                if playerChoice == 2
                {
                    print("You increase your defence in hopes to block the next blow!")
                    player.defend()
                    playerCombatTurnEnded = true
                }
                if playerChoice == 3
                {
                    print("Not implemented yet!")
                }
                if playerChoice == 4
                {
                    print("Not implemented yet!")
                }
                
            } while playerCombatTurnEnded == false
            if !enemy.dead
            {
                enemy.dealDamage(target: player)
                print("The enemy \(enemy.name) attacks you! You have \(player.health) health left!")
            }
            playerCombatTurnEnded = false
        }
        if enemy.dead
        {
            print("You have succesfully defeated the \(enemy.name)")
        }
        if player.dead
        {
            print("The hero has fallen!")
        }
        
    }
}

