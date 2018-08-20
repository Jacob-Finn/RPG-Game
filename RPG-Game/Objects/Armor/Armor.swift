//
//  Armor.swift
//  RPG Game
//
//  Created by Jacob Finn on 8/19/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
class Armor {
    var armor: Int
    var name: String
    var requiredStrength: Int
    var requiredAgility: Int
    var requiredIntelligence: Int
    init(armor: Int, name: String, requiredStrength: Int, requiredAgility: Int, requiredIntelligence: Int) {
        self.armor = armor
        self.name = name
        self.requiredIntelligence = requiredIntelligence
        self.requiredStrength = requiredStrength
        self.requiredAgility = requiredAgility
    }
}

