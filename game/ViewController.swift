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
    
    
   
    func buttons() {
        let button = stuff.randomElement()!.0
        if choices[0].titleLabel?.text != button
        {
            choices[0].setTitle(stuff.randomElement()!.0, for: .normal)
            choices[1].setTitle(stuff.randomElement()!.0, for: .normal)
            choices[2].setTitle(stuff.randomElement()!.0, for: .normal)
            choices[3].setTitle(stuff.randomElement()!.0, for: .normal)
        }
    }
    
    
    @IBAction func startbutton(_ sender: UIButton) {
        buttons()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector (timerdecreases), userInfo: nil, repeats: true)
        
        if startbutton.isHidden == true{
            startbutton.isHidden = false
        }
            else{
                startbutton.isHidden = true
            }
          
    }
        
        
    @objc func timerdecreases(){
                
            if seconds > 0{
            seconds -= 1
                runningtimer.text = "\(seconds)"}
            else {
                timer!.invalidate()
                timer = nil
            }
        if seconds == 0{
            live -= 1
            
            lives.text = "lives:\(live)"
        }
//        if choices == showingemojies{
//            point += 1
//        }
            
    }
    
        
    }
    
    

