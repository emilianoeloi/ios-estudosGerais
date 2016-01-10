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
        
        var pressedGesture = UILongPressGestureRecognizer(target: self, action: "annotate:")
        pressedGesture.minimumPressDuration = 2
        map.addGestureRecognizer(pressedGesture)
    }
    
    func annotate(gesture:UILongPressGestureRecognizer){
        print("pressed")
        var touchPoint = gesture.locationInView(self.map)
        
        var newCoordinate: CLLocationCoordinate2D = map.convertPoint(touchPoint, toCoordinateFromView: self.map)
        
        var annotation = MKPointAnnotation()
        annotation.coordinate = newCoordinate
        annotation.title = "Toquei"
        
        map.addAnnotation(annotation)
        
    }
    
    func goTo(lat:CLLocationDegrees, lng:CLLocationDegrees){
        var latDelta:CLLocationDegrees = 0.01
        var lngDelta:CLLocationDegrees = 0.01
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lngDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, lng)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
        
        var annotation = MKPointAnnotation()
        annotation.title = "Ponto Zero Zero"
        annotation.subtitle = "Meizinha da Terra"
        
        map.addAnnotation(annotation)
        
    }
    
    @IBAction func goToLocation(sender: AnyObject) {
        goTo(0, lng: 0)
    }
    
}
