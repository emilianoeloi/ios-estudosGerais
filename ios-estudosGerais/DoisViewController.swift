//
//  DoisViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano E. S. Barbosa on 12/1/15.
//  Copyright © 2015 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit

class DoisViewController: UIViewController {
    
    @IBOutlet weak var idadeReal: UITextField!
    @IBOutlet weak var buttonCalcular: UIButton!
    @IBOutlet weak var resultado: UILabel!
    
    @IBAction func calcular(sender: AnyObject) {
        var idadeGato = Int(idadeReal.text!)! * 7
        resultado.text = String(idadeGato)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Vai Sabrina")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}