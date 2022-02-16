//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Bruno Guirra on 15/02/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiFormated = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiFormated
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(red: 0.49, green: 0.82, blue: 0.96, alpha: 1.00))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor(red: 0.38, green: 0.73, blue: 0.27, alpha: 1.00))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies!", color: UIColor(red: 0.88, green: 0.23, blue: 0.24, alpha: 1.00))
        }
    }
}
