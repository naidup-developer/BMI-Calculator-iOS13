//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Appala Naidu on 03/02/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    func getBMIValue() -> String {
        
        if bmi != nil{
            let bmito1DecimalPlace = String(format: "%.2f", bmi!.value)
            return bmito1DecimalPlace
        }else
        {
            return "0.0"
        }
         
    }
    
    mutating func calculateBMI(height : Float , weight : Float) {
        
    
        let bmiValue = weight/(height * height)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }else if bmiValue < 24.9
        {
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else  {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
       
    }
    
    func getAdvice() -> String {
        return bmi!.advice
    }
    func getColor() -> UIColor {
        return bmi!.color
    }
}
