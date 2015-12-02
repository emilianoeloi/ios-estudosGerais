//
//  DoisViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano E. S. Barbosa on 12/1/15.
//  Copyright © 2015 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit

class TresViewController: UIViewController {
    
    @IBAction func guessAction(sender: AnyObject) {
        let secretNumber = Int(arc4random_uniform(6))
        let guessNumberValue = Int(guessNumber.text!)
        if secretNumber == guessNumberValue{
            guessResult.text = "You are right"
        }else{
            guessResult.text = "Wrong answer. It was a \(secretNumber)"
         }
    }
    @IBOutlet weak var guessResult: UILabel!
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var guessNumber: UITextField!
}