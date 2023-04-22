//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Yang Ding on 22.04.23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain{
    
    var bmiObj: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        let bmiValue =  (weight) / pow(height, 2)
        if bmiValue < 18.9 {
            bmiObj = BMI(value: bmiValue, advice: "eat more pizza", color: UIColor(red: 51/255, green: 123/255, blue: 197/255, alpha:0.8))
        } else if bmiValue <= 24.9 {
            bmiObj = BMI(value: bmiValue, advice: "you are healthy", color: UIColor.green)
            
        } else {
            bmiObj = BMI(value: bmiValue, advice: "do some sport", color: UIColor.red)
        }
    }
    
    func getBMIObj() -> BMI? {
        //return String(format: "%.1f", self.bmiObj?.value ?? 0.0)
        return bmiObj
    }
}
