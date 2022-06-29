//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nelson Gou on 6/22/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if (bmiValue < 18.5) {
            bmi = BMI(bmiValue, "Underweight", UIColor.cyan)
        } else if (bmiValue < 24.9) {
            bmi = BMI(bmiValue, "Healthy Weight", UIColor.green)
        } else {
            bmi = BMI(bmiValue, "Overweight", UIColor.magenta)
        }
        
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
