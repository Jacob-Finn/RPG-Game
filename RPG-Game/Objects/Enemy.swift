//
//  Enemy.swift
//  RPG Game
//
//  Created by Jacob Finn on 8/19/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation

class Enemy: Actor {
    
    var experienceGained: Int
    
     init(health: Int, name: String, defence: Int, damage: Int, dead: Bool, experienceGained: Int) {
        self.experienceGained = experienceGained
        super.init(health: health, name: name, defence: defence, damage: damage, dead: dead)
    }
    override func takeDamage(damageDealt: Int) {
        self.health -= damageDealt
        if self.health < 0
        {
            self.health = 0
        }
        if self.health == 0 {
            playerOne.increaseXP(xpGained: experienceGained)
            self.dead = true
        }
    }
    
    
    
}

