//
//  QuatorzeViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano Barbosa on 1/9/16.
//  Copyright © 2016 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit



class QuatorzeViewController : UIViewController, UITextFieldDelegate{
    
    var counter = 1
    var isAnimating = true;
    
    var timer = NSTimer()
    
    @IBOutlet weak var image: UIImageView!
    @IBAction func updateImage(sender: AnyObject) {
        if isAnimating {
            timer.invalidate()
            isAnimating = false;
        }else{
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            isAnimating = true
        }
    }
    
    func doAnimation(){
        if counter == 6{
            counter = 1
        }else{
            counter++
        }
        var newFrame = UIImage(named: "LLaP_\(counter)")
        image.image = newFrame
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        image.center = CGPointMake(image.center.x - 200, image.center.y)
        image.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(1) { () -> Void in
            self.image.center = CGPointMake(self.image.center.x + 200, self.image.center.y)
            self.image.alpha = 1
        }
    }
}
