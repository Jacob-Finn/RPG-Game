//
//  Actor.swift
//  RPG Game
//
//  Created by Jacob Finn on 8/19/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
class Actor {
    var health: Int
    var name: String
    var defence: Int
    var damage: Int
    var dead: Bool
    
    
    init(health: Int, name: String, defence: Int, damage: Int, dead: Bool)
    {
        self.dead = dead
        self.health = health
        self.name = name
        self.defence = defence
        self.damage = damage
    }
    func takeDamage(damageDealt: Int) {
        self.health -= damageDealt
        if self.health < 0
        {
            self.health = 0
        }
        if self.health == 0 {
            self.dead = true
        }
    }
    func dealDamage(target: Player)
    {
        if target.defence > self.damage {
            target.takeDamage(damageDealt: 0)
        }
        else{
            target.takeDamage(damageDealt: (self.damage - target.defence))
        }
    }
    
    
}
