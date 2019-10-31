//
//  ViewController.swift
//  game
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var choices: [UIButton]!
    
    var points = 5
    var lives = 0
    
    var stuff:[(name:String, emoji:String)]?
    var seconds = 5
    var timer:Timer?
    var istimerunning = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        stuff = [("Dog","🐶"),("Cat","🐱"),("Mice","🐭"),("Fox","🦊"),("Rooster","🐔"),("Panda","🐼"),("Pumpkin","🎃"),("Ghost","👻"),("Dice","🎲"),("skelton","💀"),("frog","🐸"),("unicorn","🦄"),("snake","🐍"),("lizard","🦎"),("blowfish","🐡")]
    }


}

