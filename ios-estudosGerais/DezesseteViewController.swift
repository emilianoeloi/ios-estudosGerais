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

var rowCounter = 0

class DezesseteViewController : UIViewController , MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var lngLabel: UILabel!
    @IBOutlet weak var directionLabel: UILabel!
    @IBOutlet weak var altitudeLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    var lastLocation :CLLocation!
    var lastAddress :String!
    
    var locationManager :CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLocationManager()
        
    }
    
    func goTo(annotationTitle:String, lat:CLLocationDegrees, lng:CLLocationDegrees){
        let latDelta:CLLocationDegrees = 0.01
        let lngDelta:CLLocationDegrees = 0.01
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lngDelta)
        
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, lng)
        
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        self.map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = annotationTitle
        annotation.subtitle = "- - - - -"
        
        self.map.addAnnotation(annotation)
        
    }
    
    @IBAction func showInApp(sender: AnyObject) {
        goTo(lastAddress, lat: lastLocation.coordinate.latitude, lng: lastLocation.coordinate.longitude)
    }
    
    func setupLocationManager() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        var loc : CLLocation = locations[0]
        latLabel.text = "\(loc.coordinate.latitude)"
        lngLabel.text = "\(loc.coordinate.longitude)"
        directionLabel.text = "\(loc.course)"
        altitudeLabel.text = "\(loc.altitude)"
        speedLabel.text = "\(loc.speed)"
        
        lastLocation = loc
        
        CLGeocoder().reverseGeocodeLocation(loc) { (placemarks, error) -> Void in
            if error == nil {
                let placemark = placemarks?[0]
                let place = CLPlacemark(placemark: placemark!)
                self.addressLabel.text = "\(place.name)"
                self.lastAddress = "\(place.name)"
                
            }
        }
        
    }
    
    
    
}
