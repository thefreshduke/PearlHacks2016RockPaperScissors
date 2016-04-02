//
//  RecapViewController.swift
//  PearlHacks2016RockPaperScissors
//
//  Created by Scotty Shaw on 4/2/16.
//  Copyright © 2016 ___sks6___. All rights reserved.
//

import UIKit

class RecapViewController: UIViewController {
    
    @IBOutlet weak var numWinsLabel: UILabel!
    
    @IBOutlet weak var numDrawsLabel: UILabel!
    
    @IBOutlet weak var numLossesLabel: UILabel!
    
    var stats = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let numWins = stats.integerForKey("Wins")
        
        let numDraws = stats.integerForKey("Draws")
        
        let numLosses = stats.integerForKey("Losses")
        
        numWinsLabel.text = "Wins: \(numWins)"
        numDrawsLabel.text = "Draws: \(numDraws)"
        numLossesLabel.text = "Losses: \(numLosses)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
