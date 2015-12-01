//
//  ViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano E. S. Barbosa on 12/1/15.
//  Copyright © 2015 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func submit(sender: AnyObject) {
        print("Button Tapped")
        label.text = textField.text
    }
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Vai Sabrina")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

