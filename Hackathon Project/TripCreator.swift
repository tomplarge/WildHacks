//
//  TripCreator.swift
//  Hackathon Project
//
//  Created by Tom Large on 11/19/16.
//  Copyright © 2016 WildHacks. All rights reserved.
//

import UIKit

class TripCreator: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var TripTitle: UITextField!
    @IBOutlet weak var TripOverview: UITextView!
    @IBOutlet weak var StartDate: UIDatePicker!
    @IBOutlet weak var EndDate: UIDatePicker!

    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            backgroundImageView.backgroundColor = UIColor.clear
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            
            blurEffectView.frame = UIScreen.main.bounds
            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            backgroundImageView.addSubview(blurEffectView)
        } else {
            backgroundImageView.backgroundColor = UIColor.black
        }
    }
    
    @IBAction func TapOffKeyboard(_ sender: Any) {
       view.endEditing(true)
    }
    
    @IBAction func DoneTripCreator(_ sender: AnyObject) {
        let Trip = TripObject()
        Trip.title = TripTitle.text
        Trip.startdate = StartDate.date as NSDate?
        Trip.enddate = EndDate.date as NSDate?
        Trip.overview = TripOverview.text
        Trip.photos = []
        Trip.stations = []
        Trip.index = appDelegate.TripArray.endIndex
        
        appDelegate.TripArray.append(Trip)
        appDelegate.currentTripBool = true
        
        print("COUNT \(appDelegate.TripArray.count)")
        print("ENDIND \(appDelegate.TripArray.endIndex)")
        
        self.performSegue(withIdentifier: "DoneStartTripSegue", sender: nil)
    }
    @IBAction func onCancel(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "DoneStartTripSegue", sender: nil)
    }
}
