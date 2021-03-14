//
//  ViewController.swift
//  Be Healthy
//
//  Created by Ramin on 14/3/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    @IBOutlet weak var outPutLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outPutLabel.text = "To check your BMI please add your data"
    }

    @IBAction func bmiCalculator(_ sender: Any) {
        let height = Double(heightInput.text!)!
        let weight = Double(weightInput.text!)!

//calculation
        let bmi = Double(weight / (height * height))
        let bodyMassIndex = Double(round(1000 * bmi)/1000)
//rendering result
        outPutLabel.text = "Your BMI is\(bodyMassIndex)"
    }
    
}

