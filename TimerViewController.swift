//
//  TimerViewController.swift
//  FiveO
//
//  Created by Rohit Nair on 5/12/19.
//  Copyright © 2019 Rohit Nair. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
let vc = ViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var Ent_pin: UITextField!
    
    @IBAction func StopButton(_ sender: Any) {
        vc.timer?.invalidate()
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
