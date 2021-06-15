//
//  ResultViewController.swift
//  BMICalculatorPRJ
//
//  Created by Apple on 12/06/2021.
//

import UIKit

class ResultViewController: UIViewController {

    var data : Float?
    
    @IBOutlet weak var ViewUI: UIView!
    @IBOutlet weak var HighlightUI: UILabel!
    @IBOutlet weak var ResultUI: UILabel!
    @IBOutlet weak var HintUI: UILabel!
    @IBOutlet weak var Pre_Calculate: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let data = data else {
            return
            
        }
        
            
        
        
        
        view.backgroundColor = UIColor (red: 0.75, green: 0.83, blue: 0.95, alpha: 1.00)
        ViewUI.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        Pre_Calculate.backgroundColor = .blue
        Pre_Calculate.layer.cornerRadius = 25
        HighlightUI.text = "Please let me know yourself"
        HighlightUI.textColor = .green
        HintUI.text = "Please improving your life"
        HintUI.textColor = .gray
        ResultUI.text = "\(0)"
        ResultUI.textColor = .white
        printBMI()
          }
          
          func printBMI() {
              guard let data = data else {
                  return
              }
              
              if data < 18.5 {
                  HighlightUI.text = "Underweight"
                  HighlightUI.textColor = .yellow
                  ResultUI.text = "\(data)"
                  HintUI.text = "You should take care your health"
                  return
              } else if data < 23 {
                  HighlightUI.text = "Good"
                  HighlightUI.textColor = .green
                  ResultUI.text = "\(data)"
                  HintUI.text = "Keep it up"
                  return
              } else if data < 25 {
                  HighlightUI.text = "Almost "
                  HighlightUI.textColor = .orange
                  ResultUI.text = "\(data)"
                  HintUI.text = "You should have eat for several - time"
                  return
              } else if data < 30 {
                  HighlightUI.text = "Observe Tpye I"
                  HighlightUI.textColor = .red
                  ResultUI.text = "\(data)"
                  HintUI.text = "It's time for diet "
                  return
              } else {
                  HighlightUI.text = "Observe type II"
                  HighlightUI.textColor = UIColor(red: 0.72, green: 0.00, blue: 0.00, alpha: 1.00)
                  ResultUI.text = "\(data)"
                  HintUI.text = "Do exersice, healthy life and please don't eat fried food, okay !!!  "
                  return
              }
              
          }
    
    @IBAction func Pre_calculating(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
   

