//
//  VinteViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano Barbosa on 1/12/16.
//  Copyright © 2016 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit
import MapKit

class VinteViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{

    @IBOutlet weak var map: MKMapView!
    
    var locationManager :CLLocationManager!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCoreLocation()
    }
    
    func setupCoreLocation(){
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
