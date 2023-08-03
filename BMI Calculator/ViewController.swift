//
//  ViewController.swift
//  BMI Calculator
//
//  Created by ahmed khaled on 03/08/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    @IBAction func hightSlider(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        print(sender.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

