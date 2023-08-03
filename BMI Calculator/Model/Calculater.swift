//
//  Calculater.swift
//  BMI Calculator
//
//  Created by ahmed khaled on 03/08/2023.
//

import UIKit


struct Calculater {
    var bmi : BMI?
    
    func getBMIValue () -> String {
        let decimalBMI = String(format: "%.2f", bmi?.value ?? 0.0)
        return decimalBMI
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    mutating func calculateBMI (height : Float , weight : Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More Helthy Food", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat Helthy Food", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
}
