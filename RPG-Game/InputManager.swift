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
                    if playerOne.statPoints != 0
                    {
                        print("Available stat points: \(playerOne.statPoints)")
                    }
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
                }else if userInput == "level up"
                {
                    if playerOne.statPoints != 0
                    {
                        print("You are leveling up! Please use the corresponding number in order to increase your stats!")
                        print("1. Strength")
                        print("2. Agility")
                        print("3. Intelligence")
                        repeat
                        {
                            let choice = playerInput(numberOfChoices: 3)
                            if choice == 1
                            {
                                playerOne.strength += 1
                                playerOne.statPoints -= 1
                            }
                            if choice == 2
                            {
                                playerOne.agility += 1
                                playerOne.statPoints -= 1
                            }
                            if choice == 3
                            {
                                playerOne.intelligence += 1
                                playerOne.statPoints -= 1
                            }
                        }
                            while playerOne.statPoints != 0
                        }else {
                            print("You don't need to level up!")
                        }
                        
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


