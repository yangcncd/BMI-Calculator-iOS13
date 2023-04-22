//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
     
    var calculateBrain = CalculateBrain()
    
    @IBOutlet weak var heightNumberLabel: UILabel!
    
    @IBOutlet weak var weightNumberLabel: UILabel!
    
    
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    
    @IBOutlet weak var heightSliderOutlet: UISlider!
    
    @IBAction func heightSliderMoved(_ sender: UISlider) {
        let valueStr = String(format: "%.2f", sender.value)
        heightNumberLabel.text = valueStr + "m"
    }
    
    @IBAction func weightSliderMoved(_ sender: UISlider) {
        let valueStr = String(Int(sender.value))
        weightNumberLabel.text = valueStr + "Kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSliderOutlet.value
        let weight = weightSliderOutlet.value
        calculateBrain.calculateBMI(height, weight)
         
        //transit from current controller to second controller, just to show how to create
        //        let seondVC = SecondViewController()
        //        seondVC.bmiValue = String(format: "%.1f", bmi)
        //        self.present(seondVC, animated: true)
        
        //transit to next screen using segue
        self.performSegue(withIdentifier: "toToResult", sender: self)
    }
    
    //prepare() will automatically be called before performSegue(...) executed
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiStruct =  calculateBrain.getBMIObj()
        }
    }
    
    
}

