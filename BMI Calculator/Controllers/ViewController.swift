//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onHeightSliderChanged(_ sender: UISlider) {
        
        //to display only two decimals
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func onWeightSliderChanged(_ sender: UISlider) {
        
        //display without decimal
        print(Int(sender.value))
        
        weightLabel.text = "\(String(format: "%.f", sender.value))kg"
    }
    
    @IBAction func onClickCalculate(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        //BMI = weight/(height * height)
        
        let bmi = weight/pow(height, 2.0)
        
        print("BMI = \(bmi)")
    }
}

