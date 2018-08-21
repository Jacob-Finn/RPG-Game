//
//  Setup.swift
//  RPG Game
//
//  Created by Jacob Finn on 8/17/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
private var madeSelection = false
private var userInput: String? = nil























func StartingTheSetup() -> Player
{
    var startingName: String
    var startingMoney: Double = 0
    print("Hello! Welcome to the game!")
    sleep(1)
    print("It is about time we started setting up your player!\nLets get started!")
    sleep(1)
    print("First off, What is your name?")
    userInput = String(readLine()!)
    if userInput == ""
    {
        print("You might want to, uhh... Put in a name? I mean, you don't have to... I'll let you try one more time.")
        userInput = readLine()
    }
    startingName = String(userInput!)
    sleep(1)
    print(  """
            Next thing, we're going to setup the difficulty of the game!
            Difficulty affects the amount of money you start the game with.
            Please type *ONLY* the number! Ex (1)
            1. Easy   - 500
            2. Normal - 300
            3. Hard   - 200
            """)
    print("Please make your selection: ")
    repeat
    {
        userInput = readLine()
        
        if let userInputInt = Int(userInput!)
        {
            if userInputInt == 1
            {
                startingMoney = 500.0
                print("You have chosen easy mode! You will start with \(startingMoney) coins.")
                madeSelection = true
            }
            else if userInputInt == 2
            {
                startingMoney = 300.0
                print("You have chosen medium difficulty! You will start with \(startingMoney) coins!")
                madeSelection = true
            }
            else  if userInputInt == 3
            {
                startingMoney = 200.0
                print("You have chosen hard difficulty. Good luck, you'll need a lot of luck to make it. You will start with \(startingMoney) coins.")
                madeSelection = true
            }
            else if userInputInt == 603
            {
                print("Debug money!!!")
                startingMoney = 99999999
                madeSelection = true
            }
            else
            {
                print("1-3 please!")
                continue
            }
        }
        else
        {
            print("Please use a number!")
            continue
        }
        
        
    } while !madeSelection
    sleep(4)
    
    return Player(health: 100, coins: startingMoney, name: startingName, monstersKilled: 0, chestplate: noChestplate, helmet: noHelmet, greaves: noGreaves, defence: 0, strength: 5, agility: 5, intelligence: 5, dead: false, abilityActive: false, experience: 0, level: 1)
    
    
    
    
}

