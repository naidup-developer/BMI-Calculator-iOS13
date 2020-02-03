//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Appala Naidu on 03/02/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi : Float = 0.0
    
    func getBMIValue() -> String {
        
        let bmito1DecimalPlace = String(format: "%.2f", bmi)
        return bmito1DecimalPlace
        
    }
    
    mutating func calculateBMI(height : Float , weight : Float) {
        
        bmi = weight/(height * height)
    }
}
