//
//  QuatroViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano E. S. Barbosa on 12/3/15.
//  Copyright © 2015 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit

class QuatroViewController: UIViewController {
    
    @IBOutlet weak var number: UITextField!

    @IBAction func verify(sender: AnyObject) {
        
        if  let number = Int(number.text!) {
            var isPrime = true;
            
            if number > 1{
                for (var i=2; i<number; i++){
                    if(number % i == 0){
                        isPrime = false;
                    }
                }
            }else if number == 2 {
                
            }else{
                isPrime = false;
            }
            
            resultado.text =  isPrime ? "É um numero primo" : "Não é um número primo"
            
            
        }
        
    }
    
    @IBOutlet weak var resultado: UILabel!
    
}