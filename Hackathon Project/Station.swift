//
//  Station.swift
//  Hackathon Project
//
//  Created by Tom Large on 11/19/16.
//  Copyright © 2016 WildHacks. All rights reserved.
//

import UIKit
import MapKit

class Station: NSObject, MKAnnotation {
    var caption : String?
    var subtitle: String?
    var latitude: Double
    var longitude: Double
    var photo: UIImage?
    
    var coordinate: (CLLocationCoordinate2D){
        return CLLocationCoordinate2D (latitude: latitude, longitude: longitude)
    }
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}
