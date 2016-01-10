//
//  DezesseteViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano Barbosa on 1/10/16.
//  Copyright © 2016 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class DezesseteViewController : UIViewController , MKMapViewDelegate, CLLocationManagerDelegate {
    
    var locationManager :CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLocationManager()
        
    }
    
    func setupLocationManager() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
    
}
