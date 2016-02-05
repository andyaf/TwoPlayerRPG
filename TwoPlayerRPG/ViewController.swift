//
//  ViewController.swift
//  TwoPlayerRPG
//
//  Created by Andrew2 on 2/4/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstPlayer = Player1(name: "Bad Guy", hp: 100, attackpwr: 10)
        
        Player1HPLabel.text = "\(firstPlayer.hp) HP"
        
        secondPlayer = Player2(name: "Good Guy", hp: 100, attackPwr: 20)
        
        Player2HPLabel.text = "\(secondPlayer.hp) HP"
        
        
        
    }

    @IBOutlet weak var Player1Image: UIImageView!
    
    @IBOutlet weak var Player2Image: UIImageView!
    
    @IBOutlet weak var bottomTextLabel: UILabel!
    
    @IBOutlet weak var Player1HPLabel: UILabel!
    
    @IBOutlet weak var Player2HPLabel: UILabel!
   
    @IBAction func Player1Attack(sender: AnyObject) {
        
        if secondPlayer.attemptAttack(firstPlayer.attkPwr) {
            Player2HPLabel.text = "\(secondPlayer.hp) HP"
            
        } else {
            Player2HPLabel.text = "Attack was unsucessful"
        }
        
        if !secondPlayer.isAlive {
            bottomTextLabel.text = "Player 2 is Dead!"
            Player2Image.hidden = true
        } else {
            
        }
        
    }
    
    
    @IBAction func Player2Attack(sender: AnyObject) {
        
        if firstPlayer.attemptAttack(secondPlayer.attkPwr) {
            Player1HPLabel.text = "\(firstPlayer.hp) HP"
        } else {
            Player1HPLabel.text = "Attack was unsucessful"
        }
        
        if !firstPlayer.isAlive {
            bottomTextLabel.text = "Player 1 is Dead!"
            Player1Image.hidden = true
            
        } else {
            
        }
        
        
    }
    
    var firstPlayer : Player1!
    var secondPlayer : Player2!
    
    
    
    
    

}

