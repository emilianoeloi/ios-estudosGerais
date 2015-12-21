//
//  CincoViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano Barbosa on 12/21/15.
//  Copyright © 2015 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit

class CincoViewController: UIViewController {
    
    var timer = NSTimer()
    var time = 0
    
    @IBOutlet weak var timerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func start(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTime"), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timerLabel.text = "0"
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    
    func increaseTime() {
        time++
        timerLabel.text = "\(time)";
    }
}