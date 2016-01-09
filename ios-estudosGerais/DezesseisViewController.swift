//
//  DezesseisViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano Barbosa on 1/9/16.
//  Copyright © 2016 Emiliano E. S. Barbosa. All rights reserved.
//

/*
35.898553,14.4279513
*/

import UIKit
import MapKit

class DezesseisViewController : UIViewController , MKMapViewDelegate {
    
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var latitude:CLLocationDegrees = 35.898553
        var longitude:CLLocationDegrees = 14.4279513
        
        var latDelta:CLLocationDegrees = 0.01
        var lngDelta:CLLocationDegrees = 0.01
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lngDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
    }
    
    func goTo(lat:CLLocationDegrees, lng:CLLocationDegrees){
        var latDelta:CLLocationDegrees = 0.01
        var lngDelta:CLLocationDegrees = 0.01
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lngDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, lng)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
    }
    
    @IBAction func goToLocation(sender: AnyObject) {
        goTo(0, lng: 0)
    }
    
}
