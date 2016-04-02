//
//  GameViewController.swift
//  PearlHacks2016RockPaperScissors
//
//  Created by Scotty Shaw on 4/2/16.
//  Copyright © 2016 ___sks6___. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var playerChoice: Int = -1
    
    var computerChoice: Int = -1
    
    @IBOutlet weak var playerChoiceLabel: UILabel!
    
    @IBOutlet weak var computerChoiceLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func activatePaper(sender: AnyObject) {
        determineOutcome(1)
        playerChoiceLabel.text = "You chose paper"
    }
    
    @IBAction func activateRock(sender: AnyObject) {
        determineOutcome(0)
        playerChoiceLabel.text = "You chose rock"
    }
    
    @IBAction func activateScissors(sender: AnyObject) {
        determineOutcome(2)
        playerChoiceLabel.text = "You chose scissors"
    }
    
    func determineOutcome(playerChoice: Int) {
        computerChoice = Int(arc4random_uniform(3))
        
        displayComputerChoice(computerChoice)
        
        if (playerChoice == computerChoice) {
            resultLabel.text = "DRAW"
        }
        else if ((playerChoice == 0 && computerChoice == 2) || (playerChoice == 1 && computerChoice == 0) || (playerChoice == 2 && computerChoice == 1)) {
            resultLabel.text = "WIN"
        }
        else {
            resultLabel.text = "LOSE"
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}