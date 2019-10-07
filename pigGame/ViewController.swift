//
//  ViewController.swift
//  pigGame
//
//  Created by Gupta, Ojas on 9/25/19.
//  Copyright © 2019 Gupta, Ojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var p1turn = true
    var p2turn = false
    var game = true
    
   
    
    @IBOutlet weak var playagain: UIButton!
    @IBOutlet weak var win1image: UIImageView!
    @IBOutlet weak var endgame: UIButton!
    @IBOutlet weak var turnchanger: UISegmentedControl!
    @IBOutlet weak var top: UIButton!
    @IBOutlet var diceImage: UIImageView!
    @IBOutlet weak var topscore: UILabel!
    @IBOutlet weak var bottomscore: UILabel!
    @IBOutlet weak var topplayerbutton: UIButton!
    @IBOutlet weak var bottomplayerbutton: UIButton!
    // making object of player one
    var playone = player1()
    // making player 2
    var playtwo = player2()
    //initialize dice 1
    var p1dice = 0
    //initialize dice 2
    var p2dice = 0
    
    override func viewDidLoad() {
        playagain.isHidden = true
        topscore.textColor = UIColor.white
        bottomscore.textColor = UIColor.white
self.view.backgroundColor = UIColor.black
        topscore.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        top.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
   
        turnchanger.transform =  self.turnchanger.transform.rotated(by: CGFloat(M_PI_2))
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func indexChanged(_ sender: Any) {
        switch turnchanger.selectedSegmentIndex
        {
        case 0:
            p1turn = true
            p2turn = false
            
        case 1:
            p2turn = true
            p1turn = false
        default:
            break
        }
    }
    @IBAction func restartApplication () {
        playone.score = 0
        playtwo.score2 = 0
        topscore.text = "0"
        bottomscore.text = "0"
        win1image.isHidden = true
        
    }
    
    
    @IBAction func playerTop(_ sender: UIButton) {
        if p1turn {
            
            p1dice = Int.random(in: 1..<7)
            playone.add(s: p1dice)
            topscore.text = String(playone.score)
            
            switch p1dice {
            case 1:
                diceImage.image = UIImage(named: "Alea_1")
                turnchanger.selectedSegmentIndex = 1
                indexChanged(turnchanger)
            case 2:
                diceImage.image = UIImage(named: "Alea_2")
                
                
            case 3:
                diceImage.image = UIImage(named: "Alea_3")
            case 4:
                diceImage.image = UIImage(named: "Alea_4")
            case 5:
                diceImage.image = UIImage(named: "Alea_5")
            case 6:
                diceImage.image = UIImage(named: "Alea_6")
            default :
                diceImage.image = UIImage(named: "face")
            }
            
        }
        if playone.score >= 100{
            win1image.image = UIImage(named: "plw")
            playagain.isHidden = false
        }
        
    }
    
    @IBAction func bottomPlayer(_ sender: UIButton) {
        if p2turn {
            
            p2dice = Int.random(in: 1..<7)
            playtwo.add2(s: p2dice)
            bottomscore.text = String(playtwo.score2)
            switch p2dice {
            case 1:
                diceImage.image = UIImage(named: "Alea_1")
                turnchanger.selectedSegmentIndex = 0
                indexChanged(turnchanger)


            case 2:
                diceImage.image = UIImage(named: "Alea_2")
                
            case 3:
                diceImage.image = UIImage(named: "Alea_3")
            case 4:
                diceImage.image = UIImage(named: "Alea_4")
            case 5:
                diceImage.image = UIImage(named: "Alea_5")
            case 6:
                diceImage.image = UIImage(named: "Alea_6")
            default :
                diceImage.image = UIImage(named: "face")
            }
        }
        if playtwo.score2 >= 100{
            win1image.image = UIImage(named: "p2w")
        playagain.isHidden = false
        }
        
        
        
    }
    
    

}



class player1 {  // player one object
    var score = 0               // player one score
    func add(s: Int)             // player one increasing score
    {
        score += s
           // if s == 1{
           //     score = 0
           // }
    }
    func get() -> Int {
        return score
    }
    
    
}
class player2 {  // player two object
    var score2 = 0               // player two score
    func add2(s: Int)             // player two increasing score
    {
        score2 += s
        //    if s == 1{
         //       score2 = 0
         //   }
    }
    func get() -> Int {
        return score2
    }
    
}


