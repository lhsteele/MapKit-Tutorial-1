//
//  homeAnnotation.swift
//  MapKitTutorial1
//
//  Created by Lisa Steele on 1/8/17.
//  Copyright © 2017 Lisa Steele. All rights reserved.
//

import Foundation
import MapKit

class homeAnnotation: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate 
    }
}

