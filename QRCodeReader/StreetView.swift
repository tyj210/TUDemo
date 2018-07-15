//
//  StreetView.swift
//  QRCodeReader
//
//  Created by Tychicus C Jones on 7/15/18.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit
import Foundation
import GoogleMaps

class ViewController2: UIViewController, GMSMapViewDelegate {
    @IBOutlet weak var streetView1: UIView!
    
    override func viewDidLoad() {
        let panoView = GMSPanoramaView(frame: .zero)
        self.view = panoView
        
        panoView.moveNearCoordinate(CLLocationCoordinate2D(latitude: 36.1520, longitude: -95.9460))
    
    }
}
