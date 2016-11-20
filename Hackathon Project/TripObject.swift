//
//  TripObject.swift
//  Hackathon Project
//
//  Created by Tom Large on 11/19/16.
//  Copyright © 2016 WildHacks. All rights reserved.
//

import UIKit

class TripObject: NSObject {
    var title : String?
    var startdate:NSDate?
    var enddate:NSDate?
    var overview:String?
    var photos: [UIImage] = []
    var stations: [Station] = []
    var index: Int?
}
