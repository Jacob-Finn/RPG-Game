//
//  InputManager.swift
//  RPG Game
//
//  Created by Jacob Finn on 8/19/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
private var userInput: String?
private var selectionMade = false
class InputManager  {
    static func playerInput (numberOfChoices: Int) -> Int
    {
        repeat
        {
            userInput = readLine()
            if let userInput = Int(userInput!)
            {
                if (userInput <= 0)
                {
                    print("Did you really think that would work?")
                    continue
                }
                if (userInput > numberOfChoices)
                {
                    print("Not a valid option! There are only \(numberOfChoices) choices!")
                    continue
                }
                selectionMade = true
                return userInput
            }else {
                if (userInput == "inventory")
                {
                    print("Equipped helmet: '\(playerOne.helmet.name)'\nDefence rating: \(playerOne.helmet.armor) ")
                    print("Equipped chestplate: '\(playerOne.chestplate.name)'\nDefence rating: \(playerOne.chestplate.armor) ")
                    print("Equipped greaves: '\(playerOne.greaves.name)'\nDefence rating: \(playerOne.greaves.armor) ")
                    continue
                }else if userInput == "stats"
                {
                    print("Health: \(playerOne.health)")
                    print("Level: \(playerOne.level)")
                    print("Experience: \(playerOne.experience)/\(requiredXP)")
                    print("Strength: \(playerOne.strength)")
                    print("Agility: \(playerOne.agility)")
                    print("Intelligence: \(playerOne.intelligence)")
                    continue
                }
                else if userInput == "help"
                {
                    print   ("""
                        Some commands are as follows:
                        help
                        inventory
                        stats
                        """)
                }
                else {
                    print("Not a valid selection!")
                    continue
                }
            }
            
        }
            while !selectionMade
        
        
        return -5 // an error return
    }
}


