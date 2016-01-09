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
    
    @IBOutlet weak var image: UIImageView!
    @IBAction func updateImage(sender: AnyObject) {
        if counter == 6{
            counter = 1
        }else{
            counter++
        }
        var newFrame = UIImage(named: "LLaP_\(counter)")
        image.image = newFrame
    }
}
