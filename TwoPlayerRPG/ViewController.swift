//
//  ViewController.swift
//  TwoPlayerRPG
//
//  Created by Andrew2 on 2/4/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomTextLabel: UILabel!
    
    @IBOutlet weak var Player1HPLabel: UILabel!
    
    @IBOutlet weak var Player2HPLabel: UILabel!
   
    @IBAction func Player1Attack(sender: AnyObject) {
        
        if secondPlayer.attemptAttack(firstPlayer.attkPwr) {
            Player2HPLabel.text = "\(secondPlayer.hp) HP"
            
        } else {
            Player2HPLabel.text = "Attack was unsucessful"
        }
        
        
        
    }
    
    
    @IBAction func Player2Attack(sender: AnyObject) {
    }
    
    var firstPlayer : Player1
    var secondPlayer : Player2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstPlayer = Player1(name: "Bad Guy", hp: 100, attackpwr: 10)
        
        secondPlayer = Player2(name: "Good Guy", hp: 100, attackPwr: 20)
        
       
        
    }

    
    
   
    
}

