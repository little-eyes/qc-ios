//
//  MapHelper.swift
//  Quickloop
//
//  Created by Jilong Liao on 5/22/15.
//  Copyright (c) 2015 Jilong Liao. All rights reserved.
//

import Foundation

class MapHelper {
    
    func centerMapAtLatLng(map: GMSMapView, lat: CLLocationDegrees, lng: CLLocationDegrees) {
        map.animateToLocation(CLLocationCoordinate2DMake(lat, lng))
        map.setMinZoom(14, maxZoom: 16)
    }
    
    func createMarkerAtLatLng(map: GMSMapView, lat: CLLocationDegrees, lng: CLLocationDegrees) -> GMSMarker {
        var marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(lat, lng)
        marker.map = map
        return marker
    }
}
