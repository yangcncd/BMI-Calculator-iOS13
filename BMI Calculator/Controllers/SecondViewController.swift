//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Yang Ding on 20.04.23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .red//same to: UIColor.red
        
        let label=UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        //put our label onto the screen
        view.addSubview(label) //same: super.view.addSubview(label
    }
    
}
