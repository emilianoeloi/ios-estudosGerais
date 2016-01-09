//
//  QuinzeViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano Barbosa on 1/9/16.
//  Copyright © 2016 Emiliano E. S. Barbosa. All rights reserved.
//
import UIKit

/// Jogador um Bolinha e Jogador dois X
/*
    0 1 2
    3 4 5
    6 7 8
*/

class QuinzeViewController : UIViewController{
    
    @IBOutlet weak var winner: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    @IBAction func playAgainAction(sender: AnyObject) {
        activePlayer = 1
        gameState = [0,0,0,0,0,0,0,0,0]
        gameActive = true;
        
        var button: UIButton
        
        for var i = 0; i<9;i++ {
            button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, forState: .Normal)
            
        }
        
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            self.winner.alpha = 0
            self.playAgain.alpha = 0
        })
    }
    
    var activePlayer = 1
    var gameState = [0,0,0,0,0,0,0,0,0]
    var winningCombinations = [[0,1,2],[3,4,5],[6,7,8],
                               [0,3,6],[1,4,7],[2,5,8],
                               [0,4,8],[2,4,6]]
    var gameActive = true;
    
    @IBAction func play(sender: AnyObject) {
        if gameState[sender.tag] == 0 && gameActive == true{
            let circle = UIImage(named: "bolinha")
            let cross = UIImage(named: "xizinho")
            var currentImage : UIImage
            
            gameState[sender.tag] = activePlayer
            
            if activePlayer == 1 {
                currentImage = circle!
                activePlayer = 2
            }else{
                currentImage = cross!
                activePlayer = 1
            }
            sender .setImage(currentImage, forState: .Normal)
            
            for var combination in winningCombinations{
                if (gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]){
                    print(combination[0])
                    var winnerLabel = "Bolinha ganhou!"
                    if gameState[combination[0]] == 2 {
                        winnerLabel = "Xizinho Ganhou!"
                    }
                    gameActive = false
                    
                    self.winner.text = winnerLabel
                    
                    UIView.animateWithDuration(1.0, animations: { () -> Void in
                        self.winner.alpha = 1
                        self.playAgain.alpha = 1
                    })
                    
                }
            }
            
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winner.alpha = 0
        playAgain.alpha = 0
    }
    
}