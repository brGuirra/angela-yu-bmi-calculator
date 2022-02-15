//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Bruno Guirra on 15/02/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    var bmiValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        
    }
    
    
}
