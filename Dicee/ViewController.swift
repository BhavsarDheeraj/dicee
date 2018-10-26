//
//  ViewController.swift
//  Dicee
//
//  Created by Dheeraj Bhavsar on 12/12/17.
//  Copyright © 2017 Dheeraj Bhavsar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        updateDiceImages()
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }

    
    //on button press
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    //assigning random images to dice
    func updateDiceImages() {
        
        randomDiceIndex1 = Int(arc4random_uniform(6)) //arc4random to generate random numbers
        randomDiceIndex2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    
    //using iphone shake feature to assign random images-> motionEnded function
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
        
    }
    
}

