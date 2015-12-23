//
//  SeisViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano E. S. Barbosa on 12/23/15.
//  Copyright © 2015 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit

class SeisViewController: UIViewController, UITableViewDelegate {
    
    var family = ["Maria das Graças Silva", "Belarmino Vieira", "Giany Lopes Rosado", "Marco Antonio Silva Vieira", "Emiliano Eloi Silva Barbosa", "Adriana Silva Vieira de Araújo", "Cleber Silva Vieira", "Estevam Augusto Silva Melo Barbosa", "Thaís Silva Vieira"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return family.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text = family[indexPath.row]
        return cell
    }
    
}
