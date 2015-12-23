//
//  SeteViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano E. S. Barbosa on 12/23/15.
//  Copyright © 2015 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit

class SeteViewController: UIViewController, UITableViewDelegate{
    
    
    @IBOutlet weak var tableview: UITableView!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func changeSlider(sender: AnyObject) {
        tableview.reloadData()
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        let timesTable = Int(slider.value * 20)
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
        return cell
    }
    
    
}
