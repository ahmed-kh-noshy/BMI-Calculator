//
//  ViewController.swift
//  BMI Calculator
//
//  Created by ahmed khaled on 03/08/2023.
//

import UIKit

class CalculateViewController: UIViewController {

    var BMI = Calculater()
    
    @IBOutlet weak var hightValue: UISlider!
    @IBOutlet weak var weightValue: UISlider!
    @IBOutlet weak var hightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    @IBAction func hightSlider(_ sender: UISlider) {
        
        let hight = String(format: "%.2f", sender.value)
        hightLable.text =  "\(hight) m"
        
    }
    @IBAction func weightSlider(_ sender: UISlider) {
       
        let weight = String(format: "%.2f", sender.value)
        weightLable.text =  "\(weight) kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let hight = hightValue.value
        let weight = weightValue.value
        BMI.calculateBMI(height: hight, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let VC = segue.destination as! ResultViewController
            VC.bmiValue = BMI.getBMIValue()
            VC.advice = BMI.getAdvice()
            VC.backgroundColor = BMI.getColor()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

