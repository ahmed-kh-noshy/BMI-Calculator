//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by ahmed khaled on 03/08/2023.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : String?
    var advice : String?
    var backgroundColor : UIColor?
    
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLable.text =  bmiValue
        adviceLable.text = advice
        view.backgroundColor = backgroundColor

        // Do any additional setup after loading the view.
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
