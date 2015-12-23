//
//  OitoViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano E. S. Barbosa on 12/23/15.
//  Copyright © 2015 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit

class OitoViewController : UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        NSUserDefaults.standardUserDefaults().setObject("Maria", forKey: "name")
        let name = NSUserDefaults.standardUserDefaults().objectForKey("name")
        print(name)
        
        let arr = ["Estevam", "Emiliano"]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "sons")
        
        let userArray = NSUserDefaults.standardUserDefaults().objectForKey("sons")! as! NSArray
        
        for var son in userArray{
            print(son)
        }
        
        
    }
}
