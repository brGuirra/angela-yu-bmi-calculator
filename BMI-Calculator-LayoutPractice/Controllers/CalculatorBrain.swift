//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Bruno Guirra on 15/02/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String? {
        let bmiFormated = String(format: "%.1f", bmi ?? 0.0)
        return bmiFormated
    }
}
