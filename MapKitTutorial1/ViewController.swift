//
//  ViewController.swift
//  MapKitTutorial1
//
//  Created by Lisa Steele on 1/8/17.
//  Copyright © 2017 Lisa Steele. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let distanceSpan:CLLocationDegrees = 2000
        //distanceSpan defines how big a view to show around the pin
        
        let home:CLLocationCoordinate2D = CLLocationCoordinate2DMake(37.543625, -122.23918739999999)
        
        mapView.setRegion(MKCoordinateRegionMakeWithDistance(home, distanceSpan, distanceSpan), animated: true)
        
        
        let homeCSClassPin = homeAnnotation(title: "Home", subtitle: "I did it!", coordinate: home)
        
        mapView.addAnnotation(homeCSClassPin)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

