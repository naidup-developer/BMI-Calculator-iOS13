//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Appala Naidu on 03/02/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color
        adviceLabel.text = advice
        bmiLabel.text = String(bmiValue!)
    }
    

    @IBAction func onclickRecalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
