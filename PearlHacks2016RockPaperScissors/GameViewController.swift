//
//  GameViewController.swift
//  PearlHacks2016RockPaperScissors
//
//  Created by Scotty Shaw on 4/2/16.
//  Copyright © 2016 ___sks6___. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    // global variables
    
    var computerChoice: Int = -1
    
    var playerChoice: Int = -1
    
    var stats = NSUserDefaults.standardUserDefaults()
    
    // IBOutlet variables
    
    @IBOutlet weak var playerChoiceLabel: UILabel!
    
    @IBOutlet weak var computerChoiceLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    // IBAction functions and supporting functions
    
    @IBAction func activateRock(sender: AnyObject) {
        determineOutcome(0)
        playerChoiceLabel.text = "You chose rock"
    }
    
    @IBAction func activatePaper(sender: AnyObject) {
        determineOutcome(1)
        playerChoiceLabel.text = "You chose paper"
    }
    
    @IBAction func activateScissors(sender: AnyObject) {
        determineOutcome(2)
        playerChoiceLabel.text = "You chose scissors"
    }
    
    // non-IBAction functions
    
    func determineOutcome(playerChoice: Int) {
        computerChoice = Int(arc4random_uniform(3))
        
        displayComputerChoice(computerChoice)
        
        if (playerChoice == computerChoice) {
            resultLabel.text = "DRAW"
            let numDraws = stats.integerForKey("Draws")
            stats.setInteger(numDraws + 1, forKey: "Draws")
        }
        else if ((playerChoice == 0 && computerChoice == 2) || (playerChoice == 1 && computerChoice == 0) || (playerChoice == 2 && computerChoice == 1)) {
            resultLabel.text = "WIN"
            let numWins = stats.integerForKey("Wins")
            stats.setInteger(numWins + 1, forKey: "Wins")
        }
        else {
            resultLabel.text = "LOSE"
            let numLosses = stats.integerForKey("Losses")
            stats.setInteger(numLosses + 1, forKey: "Losses")
        }
    }
    
    func displayComputerChoice(computerChoice: Int) {
        if (computerChoice == 0) {
            computerChoiceLabel.text = "Computer chose rock"
        }
        else if (computerChoice == 1) {
            computerChoiceLabel.text = "Computer chose paper"
        }
        else {
            computerChoiceLabel.text = "Computer chose scissors"
        }
    }
    
    // override functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}