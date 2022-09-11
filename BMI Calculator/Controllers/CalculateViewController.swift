//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightBar: UISlider!
    @IBOutlet weak var weightBar: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var calculate: UIButton!
    var calculator=CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        heightLabel.text=String(format: "%.2f", sender.value) + "m"
    }
   
    @IBAction func weightChanged(_ sender: UISlider) {
        weightLabel.text="\(Int(sender.value))Kg"
     }
    @IBAction func calculateBMI(_ sender: UIButton) {
        
        let h=Float(String(format: "%.2f", heightBar.value))!
        let w=Int(weightBar.value)
        calculator.calculateBMI(weight: w, height: h)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToResult"{
            let destinationVC=segue.destination as! ResultViewController
            destinationVC.bmiValue=calculator.getBMI()
            destinationVC.color=calculator.getColor()
            destinationVC.advice=calculator.getAdvice()
            
        }
        
    }
}

