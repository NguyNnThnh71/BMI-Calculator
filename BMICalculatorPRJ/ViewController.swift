//
//  ViewController.swift
//  BMICalculatorPRJ
//
//  Created by Apple on 12/06/2021.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var Male: UIButton!
    @IBOutlet weak var Pic1: UIImageView!
    @IBOutlet weak var BMICaculator: UILabel!
    @IBOutlet weak var View2: UIView!
    @IBOutlet weak var Female: UIButton!
    @IBOutlet weak var Pic2: UIImageView!
    @IBOutlet weak var View3: UIView!
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var Height: UILabel!
    @IBOutlet weak var View4: UIView!
    @IBOutlet weak var Weight: UILabel!
    @IBOutlet weak var Subtract: UIButton!
    @IBOutlet weak var Plus: UIButton!
    @IBOutlet weak var View5: UIView!
    @IBOutlet weak var Age: UILabel!
    @IBOutlet weak var Subtract1: UIButton!
    @IBOutlet weak var Plus1: UIButton!
    @IBOutlet weak var Bottom: UIButton!
    
    var GenderMale : Bool = true
    var GenderFemale : Bool = true
    var age = 0
    var weightCount = 50
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor (red: 0.75, green: 0.83, blue: 0.95, alpha: 1.00)
        BMICaculator.textColor = .white
        Plus.backgroundColor = UIColor (red: 0.75, green: 0.83, blue: 0.95, alpha: 1.00)
        Subtract.backgroundColor = UIColor (red: 0.75, green: 0.83, blue: 0.95, alpha: 1.00)
        Plus1.backgroundColor = UIColor (red: 0.75, green: 0.83, blue: 0.95, alpha: 1.00)
        Subtract1.backgroundColor = UIColor (red: 0.75, green: 0.83, blue: 0.95, alpha: 1.00)
        Male.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        Female.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        View1.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        View2.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        View3.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        View4.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        View5.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        Bottom.backgroundColor = .blue
        Bottom.layer.cornerRadius = 25
        Subtract.layer.cornerRadius = 100
        Plus.layer.cornerRadius = 100
        Subtract1.layer.cornerRadius = 100
        Plus1.layer.cornerRadius = 100
        
        myLabel1.textAlignment = .center
        myLabel1.textColor = .white
        
        
        Slider.minimumValue = 0
        Slider.maximumValue = 200
        Slider.value = 100
        
        myLabel2.textAlignment = .center
        myLabel2.textColor = .white
        myLabel2.text = "\(0)"
        
        
        myLabel3.textAlignment = .center
        myLabel3.textColor = .white
        myLabel3.text = "\(0)"
        
        Male.setTitle("Male", for: .normal)
        Female.setTitle("Female", for: .normal)
        GenderMale = false
        GenderFemale = false
       
        }
    @IBAction func changeValue(_ sender: UISlider) {
        let value = sender.value
        myLabel1.text = "\(Int(value))"
    }
    @IBAction func SubWeight(_ sender: Any) {
        weightCount -= 1
        myLabel2.text = "\(weightCount)"
    }
    
    @IBAction func PlusWeight(_ sender: Any) {
        weightCount += 1
        myLabel2.text = "\(weightCount)"
    }

    
    @IBAction func SubAge(_ sender: Any) {
        age -= 1
        myLabel3.text = "\(age)"
    }
    
    @IBAction func PlusAge(_ sender: Any) {
        age += 1
        myLabel3.text = "\(age)"
    }
    
    
    @IBAction func PressMale(_ sender: UIButton) {
        if GenderMale {
            View2.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        } else {
            View1.backgroundColor = .none
            View2.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
    }
    GenderMale != GenderMale
}
    
    
    @IBAction func PressFemale(_ sender: UIButton) {
        if GenderFemale {
            View1.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        } else {
            View2.backgroundColor = .none
            View1.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        }
        GenderFemale != GenderFemale
    }
    
    
    
    @IBAction func Calculate_UI(_ sender: Any) {
        let storyboard = UIStoryboard (name: "Main", bundle: nil)
        let resulting = storyboard.instantiateViewController(identifier: "ResultViewController") as ResultViewController
        resulting.modalPresentationStyle = .fullScreen
        guard let height = myLabel1.text, let weight = myLabel2.text else {return}
        let BMI = Float(weightCount)/powf((Slider.value/100), 2)
        resulting.data = BMI
        self.present(resulting, animated: true, completion: nil)
       
    }
    
}
