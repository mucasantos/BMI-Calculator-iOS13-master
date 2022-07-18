//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Samuel Santos on 18/07/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
      
    mutating func calculateBMI( weight: Float, height: Float){
        
        let bmiValue =  weight /  pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight", color:  UIColor.blue )
        }else if  bmiValue  < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal", color:UIColor.green )
        }else {
            bmi = BMI(value: bmiValue, advice: "Overweight", color:UIColor.red )
        }
        
        
    }
    
    
    func getBMIValue() -> String{
        
        return String(format: "%.1f", bmi?.value  ?? 0.0)
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? ""
    }
    
    func getColor () -> UIColor {
        
        return bmi?.color ?? UIColor.yellow
    }
}
