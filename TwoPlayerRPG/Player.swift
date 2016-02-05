//
//  Player.swift
//  TwoPlayerRPG
//
//  Created by Andrew2 on 2/4/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import Foundation

class Player {
   private var _hp = 100
   private var _attkPwr = 10

    var hp : Int {
        get {
        return _hp
            }
        }
    
    var attkPwr : Int {
        get {
            return _attkPwr
        }
    }
    
    var isAlive : Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }

    init(startingHP:Int, attackPwr: Int) {
        self._hp = startingHP
        self._attkPwr = attackPwr
    }
 
    func attemptAttack(attackPwr:Int) -> Bool {
        self._hp -= attackPwr
        return true
    }
    
}