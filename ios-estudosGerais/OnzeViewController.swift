//
//  OnzeViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano Barbosa on 1/6/16.
//  Copyright © 2016 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit

var toDoList = [String]()

class OnzeViewController : UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var toDoDescription: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addItem(sender: AnyObject) {
        toDoList.append(toDoDescription.text!)
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        toDoDescription.text = ""
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        toDoDescription.resignFirstResponder()
        return true;
    }
    
}