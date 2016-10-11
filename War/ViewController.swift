//
//  ViewController.swift
//  War
//
//  Created by Rupesh Bhatti on 11/10/2016.
//  Copyright © 2016 Rupesh Bhatti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var rightCardImageView: UIImageView!
    @IBOutlet weak var leftCardImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    //declare cardArray
    let cardArray = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    //declare variable for leftScore
    var leftScore = 0
    
    //declare variable for rightScore
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getRandomIntBetween0and12() -> Int{
        // function will return a number between 0 and 12
        return Int(arc4random_uniform(13))
    }
    

    @IBAction func dealTapped(_ sender: AnyObject) {
        
        let leftCardIndex = getRandomIntBetween0and12()
        let rightCardIndex = getRandomIntBetween0and12()
        
        // display left card at leftCardIndex
        leftCardImageView.image = UIImage(named: cardArray[leftCardIndex])
        
        //display right card at rightCardIndex
        rightCardImageView.image = UIImage(named: cardArray[rightCardIndex])
        
        if leftCardIndex > rightCardIndex {
            //Player wins
            leftScore += 1 //increment leftScore
            leftScoreLabel.text = String(leftScore) //update leftScoreLabel
        }
        
        if leftCardIndex < rightCardIndex {
            //CPU wins
            rightScore += 1 //increment rightScore
            rightScoreLabel.text = String(rightScore) //update rightScoreLabel
        }
        
        // if it's a tie, do nothing
    }

}

