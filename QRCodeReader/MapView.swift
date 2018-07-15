//
//  MapView.swift
//  QRCodeReader
//
//  Created by Tychicus Jones on 5/23/2017.
//  Copyright © 2017 Tychicus Jones Jr. All rights reserved.
//

import Foundation
import GoogleMaps

class ViewController: UIViewController {
    @IBOutlet weak var mapView1: UIView!
    
    override func viewDidLoad() {
        let camera = GMSCameraPosition.camera(withLatitude: Double(36.1520),
                                              longitude: Double(-95.9460),
                                              zoom: 15)
        let mapView = GMSMapView.map(withFrame: self.mapView1.bounds, camera: camera)  //
        mapView.settings.myLocationButton = true
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.isMyLocationEnabled = true
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 36.1520, longitude: -95.9460)
        marker.title = "The University of Tulsa"
        marker.snippet = "Oklahoma"
        marker.map = mapView
        
        
        // Unhide everything once maps is complete and data filled
        
        self.mapView1.addSubview(mapView)
    }
}
