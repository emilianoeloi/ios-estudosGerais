//
//  NoveViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano Barbosa on 1/4/16.
//  Copyright © 2016 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit

class NoveViewController : UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textbox: UITextField!
    @IBAction func buscar(sender: AnyObject) {
        textbox.resignFirstResponder()
        label.text = textbox.text;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textbox.delegate = self
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        label.text = textbox.text
        textField.resignFirstResponder()
        return true
    }
}