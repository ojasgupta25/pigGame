//
//  ViewController.swift
//  pigGame
//
//  Created by Gupta, Ojas on 9/25/19.
//  Copyright © 2019 Gupta, Ojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var topscore: UILabel!
    @IBOutlet weak var bottomscore: UILabel!
    // making object of player one
    var playone = player1()
    // making player 2
    var playtwo = player2()
    //initialize dice 1
    var p1dice = 0
    //initialize dice 2
    var p2dice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    @IBAction func playerTop(_ sender: UIButton) {
        
        p1dice = Int.random(in: 1..<7)
        playone.add(s: p1dice)
        
    }
    
    @IBAction func bottomPlayer(_ sender: Any) {
        
        p2dice = Int.random(in: 1..<7)
        playtwo.add(s: p2dice)
        
        
        
    }
    
    

}



class player1 {  // player one object
    var score = 0               // player one score
    func add(s: Int)             // player one increasing score
    {
        score += s
            if s == 1{
                score = 0
            }
    }
    
    
    
}
class player2 {  // player two object
    var score2 = 0               // player two score
    func add(s: Int)             // player two increasing score
    {
        score2 += s
            if s == 1{
                score2 = 0
            }
    }
    
}


