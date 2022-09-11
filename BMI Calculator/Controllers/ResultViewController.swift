//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Ahmed Abdelfatah on 21/08/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    var bmiValue: String?
    var advice:String?
    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text=bmiValue
        messageLabel.text=advice
        view.backgroundColor=color
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
