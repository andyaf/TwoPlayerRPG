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

    init(startingHP:Int, attackPwr: Int) {
        self._hp = startingHP
        self._attkPwr = attackPwr
    }
 
    
    
}