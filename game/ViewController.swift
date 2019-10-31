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
    
    @IBOutlet weak var showingemojies: UILabel!
    
    @IBOutlet weak var runningtimer: UILabel!
    @IBOutlet weak var startbutton: UIButton!
    
    @IBOutlet weak var point: UILabel!
    
    
    @IBOutlet weak var lives: UILabel!
    
    var points = 0
    var live = 5
    
    var stuff = [(String, String)]()
    
    var seconds = 5
    var timer:Timer?
    var istimerunning = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        stuff = [("Dog","🐶"),("Cat","🐱"),("Mice","🐭"),("Fox","🦊"),("Rooster","🐔"),("Panda","🐼"),("Pumpkin","🎃"),("Ghost","👻"),("Dice","🎲"),("skelton","💀"),("frog","🐸"),("unicorn","🦄"),("snake","🐍"),("lizard","🦎"),("blowfish","🐡")]
        
        lives.text = "lives:5"
        point.text = "point:0"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector (updateFocusIfNeeded), userInfo: nil, repeats: true)
        showingemojies.text = stuff.randomElement()!.1
        
        
        
    }


}

