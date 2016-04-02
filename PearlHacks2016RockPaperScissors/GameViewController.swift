//
//  GameViewController.swift
//  PearlHacks2016RockPaperScissors
//
//  Created by Scotty Shaw on 4/2/16.
//  Copyright © 2016 ___sks6___. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var playerChoice: Int = 0
    
    var computerChoice: Int = 0
    
    @IBOutlet weak var playerChoiceLabel: UILabel!
    
    @IBOutlet weak var computerChoiceLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func activatePaper(sender: AnyObject) {
        playerChoice = 2
    }
    
    @IBAction func activateRock(sender: AnyObject) {
        playerChoice = 1
    }
    
    @IBAction func activateScissors(sender: AnyObject) {
        playerChoice = 3
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}