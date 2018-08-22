//
//  Player Stats.swift
//  RPG Game
//
//  Created by Jacob Finn on 8/17/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
var requiredXP = 0
private var defenceRaised = false
class Player {
    var statPoints: Int
    var level: Int
    var experience: Int
    var abilityActive: Bool
    var health: Int
    var strength: Int
    var intelligence: Int
    var agility: Int
    var monstersKilled: Int
    var coins: Double
    var name: String
    var chestplate: Chestplate
    var helmet: Helmet
    var greaves: Greaves
    var defence: Int
    var dead: Bool
     // Player should technically inherit from Actor, but since I made enemies later and Actors later. They don't, soooooo.... Oh well.
    init(health: Int, coins: Double, name: String, monstersKilled: Int, chestplate: Chestplate, helmet: Helmet, greaves: Greaves, defence: Int, strength: Int, agility: Int, intelligence: Int, dead: Bool, abilityActive: Bool, experience: Int, level: Int, statPoints: Int)
    {
        self.statPoints = statPoints
        self.experience = experience
        self.level = level
        self.abilityActive = abilityActive
        self.dead = dead
        self.health = health
        self.monstersKilled = monstersKilled
        self.coins = coins
        self.name = name
        self.chestplate = chestplate
        self.helmet = helmet
        self.greaves = greaves
        self.defence = defence
        self.agility = agility
        self.intelligence = intelligence
        self.strength = strength
        requiredXP = self.level * 10
        
    }
    func subtractCoins(coinsToSubtract: Double)  {
        self.coins -= coinsToSubtract
        
    }
    func updatePlayerStats() -> () {
        self.defence = self.helmet.armor + self.chestplate.armor + self.greaves.armor
    }
    func takeDamage(damageDealt: Int)
    {
        // Add ability to dodge based on agility here! There will always be a chance the player can dodge.
        self.health -= damageDealt
        if defenceRaised == true {
            defenceRaised = false
            print("Your defence is raised! You have increased armor till the next attack!")
            self.defence = (defence / 2)
        }
        if self.health < 0
        {
            self.health = 0
        }
        if self.health == 0 {
            RandomEvents.Death()
            self.dead = true
        }
    }
    func defend()
    {
        // if defence is already raised we shouldn't be allowing the player to defend again or else defence will multiply!
        self.defence = (self.defence * 2)
        defenceRaised = true
    }
    func addCoins(coinsToAdd: Double)
    {
        self.coins += coinsToAdd
    }
    func dealDamage(target: Actor)
    {
        if target.defence > self.strength {
            target.takeDamage(damageDealt: 0)
        }
        else
        {
            target.takeDamage(damageDealt: (self.strength - target.defence))
        }
    }
    func addHealth(healthToAdd: Int) {
            self.health += healthToAdd
        if  self.health > 100 {
            self.health = 100
        }
    }
    func increaseXP(xpGained: Int)
    {
        self.experience += xpGained
        if self.experience >= requiredXP {
            levelUp()
        }
        else
        {
            return
        }
    }
    
    func levelUp ()
    {
        if self.level > 11 {
            self.experience = 0
            print("You're at the max level!")
        }
        else
        {
            self.statPoints += 5
            self.experience = 0
            self.level += 1
            print("You leveled up to level \(self.level)!\nTo spend your stat points type 'level up'")
            requiredXP = self.level * 10
        }

    }
    
    
    
}

