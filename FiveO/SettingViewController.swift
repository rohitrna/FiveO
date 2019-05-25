//
//  SettingViewController.swift
//  FiveO
//
//  Created by Rohit Nair on 5/11/19.
//  Copyright © 2019 Rohit Nair. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   
    
    }
    @IBOutlet weak var PhoneField: UITextField!
    @IBOutlet weak var PIN_Field: UITextField!
   // let defaults = UserDefaults.standard
   
    /*func PhoneSetting(){
        let phoneNum = PhoneField.text
        defaults.set(phoneNum, forKey: "phones")
    
         let pin = PIN_Field.text
        defaults.set(pin, forKey: "PINS")
        
    }*/
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
