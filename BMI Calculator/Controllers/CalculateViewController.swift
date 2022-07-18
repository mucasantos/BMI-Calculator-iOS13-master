//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var bmiValue = "0.0"

    @IBOutlet weak var heightLabel: UISlider!
    @IBOutlet weak var weightText: UILabel!
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightLabel: UISlider!
    
    
    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        
        let formatedHeight = String(format: "%.2f", sender.value)
        
        heightText.text = formatedHeight + "m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        
        let formatedWeight = String(format: "%.0f", sender.value)
        
        weightText.text = formatedWeight + "Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightLabel.value
        let height = heightLabel.value
        
        let bmi =  weight / pow(height, 2)
        
        bmiValue = String(format: "%0.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = bmiValue
        }
        
        
    }
}

