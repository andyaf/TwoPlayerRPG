//
//  Player1.swift
//  TwoPlayerRPG
//
//  Created by Andrew2 on 2/4/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import Foundation

class Player1: Player {
    
    private var _name = "Player 1"
    
    var name : String {
        get {
            return _name
        }
    }

    convenience init (name: String, hp: Int, attackpwr: Int) {
    self.init(startingHP: hp, attackPwr: attackpwr)
    _name = name
    
        //Here it is -> the HP is passed into the next class as the initalizer
        
        
    }

    
  }