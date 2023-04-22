//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Yang Ding on 20.04.23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiStruct: BMI?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.  
        bmiLabel.text = String(format: "%.1f", bmiStruct?.value ??  0.0)
        adviceLabel.text = bmiStruct?.advice
        self.view.backgroundColor = bmiStruct?.color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        //go back to previews screen
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
