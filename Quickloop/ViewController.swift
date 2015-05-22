//
//  ViewController.swift
//  Quickloop
//
//  Created by Jilong Liao on 5/21/15.
//  Copyright (c) 2015 Jilong Liao. All rights reserved.
//

import UIKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager: CLLocationManager!
    var mapHelper: MapHelper!
    var mapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mapHelper = MapHelper()
        self.locationManager = CLLocationManager()
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.delegate = self
        self.locationManager.startUpdatingLocation()
        
        self.mapView = GMSMapView()
        self.mapView.myLocationEnabled = true
        
        self.view = self.mapView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        self.mapHelper.centerMapAtLatLng(
            self.mapView,
            lat: locations[0].coordinate.latitude,
            lng: locations[0].coordinate.longitude)

    }
    
    

}

