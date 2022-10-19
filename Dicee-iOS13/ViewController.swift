//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var diceImageView2: UIImageView!
    
    @IBOutlet var diceImageView1: UIImageView!
    
    var leftDiceNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceOne")
       diceImageView2.image = UIImage(imageLiteralResourceName: "DiceSix")
//        diceImageView1.alpha = 0.5
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image =  [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"),UIImage(imageLiteralResourceName: "DiceFive"),UIImage(imageLiteralResourceName: "DiceSix")][leftDiceNumber]
        
        if(leftDiceNumber == 5){
            leftDiceNumber = 0
        }else{
            leftDiceNumber = leftDiceNumber + 1
        }
    }
    
}

