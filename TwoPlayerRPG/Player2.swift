//
//  Player2.swift
//  TwoPlayerRPG
//
//  Created by Andrew2 on 2/4/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import Foundation

class Player2: Player {
    private var _name = "Player 2"
    
    var name: String {
        get {
            return _name
        }
    }
    
    convenience init (name: String, hp: Int, attackPwr: Int) {
        self.init (startingHP : hp, attackPwr: attackPwr)
        _name = name
    }
    
    
    
    
}