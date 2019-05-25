//
//  ViewController.swift
//  FiveO
//
//  Created by Rohit Nair on 4/8/19.
//  Copyright © 2019 Rohit Nair. All rights reserved.
//

import UIKit
import MessageUI
import CoreLocation

class ViewController: UIViewController,MFMessageComposeViewControllerDelegate,CLLocationManagerDelegate{
    let locationmanager = CLLocationManager()
    var timer:Timer!
    
    
   
    let svc = SettingViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        locationmanager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled(){
            locationmanager.delegate = self
            locationmanager.desiredAccuracy = kCLLocationAccuracyBest
            locationmanager.startUpdatingLocation()
        }
        // Do any additional setup after loading the view.
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
        if let location = locations.first{
            print(location.coordinate)
        }
       
    }

    

    @IBAction func SendMessage(_ sender: Any) {
      //  UIApplication.shared.open(number)
        print (self.locationmanager.location?.coordinate ?? "NO GPS")
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self
        composeVC.recipients = ["16503021081"]
        //let numstring = (num as AnyObject).stringValue
       // composeVC.recipients = ([numstring] as! [String])
        if #available(iOS 10.0, *){
            timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true, block: {(timer) in
        
        composeVC.body = " tst \(String(describing: self.locationmanager.location?.coordinate))"
        if MFMessageComposeViewController.canSendText(){
            self.present(composeVC,animated: true,completion: nil)
            
        }else{
            return
        }
    })
        }
    }
    func messageComposeViewController( _ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult){
        controller.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func MakeCall(_ sender: UIButton) {
        guard let number = URL(string: "tel://16503021081") else { return }
        UIApplication.shared.open(number)
       
    }
    
}



