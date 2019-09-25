//
//  ViewController.swift
//  pigGame
//
//  Created by Gupta, Ojas on 9/25/19.
//  Copyright © 2019 Gupta, Ojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    // making object of player one
     var playone = player1()
    // making player 2
    var playtwo = player2()
    
    
    
    
    @IBAction func playerTop(_ sender: UIButton) {
    }
    
    @IBAction func bottomPlayer(_ sender: Any) {
    }
    
    

    @IBOutlet weak var diceImage: UIImageView!
    
    @IBOutlet weak var topscore: UILabel!
    @IBOutlet weak var bottomscore: UILabel!
}



class player1: ViewController {  // player one object
    var score = 0               // player one score
    func add(_ s: Int)             // player one increasing score
    {
        score += s
    }
    
    
    
}
class player2 {  // player two object
    var score2 = 0               // player two score
    func add(_ s: Int)             // player two increasing score
    {
        score2 += s
    }
    
}


