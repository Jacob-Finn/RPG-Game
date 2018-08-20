//
//  main.swift
//  RPG Game
//
//  Created by Jacob Finn on 8/17/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//
import Foundation

var number: Int
private var playerchoice: Int
var playerOne: Player
playerOne = StartingTheSetup()
print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n)")
print("Your name is \(playerOne.name) and you have \(playerOne.coins) coins. It is time to start your legacy!")
print("You can type 'inventory' at any time to see your inventory and you can type 'stats' at any time to see your stats")
print("You can also type help at any time to see some basic commands!")
print("I will start you out with some basic items!")
playerOne.chestplate = basicChestplate
playerOne.helmet = basicHelmet
playerOne.greaves = basicGreaves
playerOne.updatePlayerStats()

repeat
{
    print   ("""
        Where will you go now?
        1. Go to town
        2. Explore the woods!


        """)
    
    
    playerchoice = InputManager.playerInput(numberOfChoices: 2)
    if playerchoice == 1
    {
        print("This feature has not yet been implemented!")
    }else {
        RandomEvents.ForestEvent()
    }
}
    while 1 == 1



