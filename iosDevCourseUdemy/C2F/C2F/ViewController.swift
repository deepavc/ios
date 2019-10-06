//
//  ViewController.swift
//  C2F
//
//  Created by Esh on 03/12/18.
//  Copyright © 2018 cieo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var numberOfSucessfulConversions: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func convertButtonOnClick(_ sender: UIButton) {
        
        if tempTextField.text == ""{
            resultLabel.textColor = UIColor.red
            resultLabel.text = "Please enter a valid value ..."
            return
        }
        else {
            var fValue : Double = 0
            
            if Double(tempTextField.text!) == nil{
                resultLabel.textColor = UIColor.red
                resultLabel.text = "Please enter a valid value ..."
                return
            }
            else if let cValue = Double(tempTextField.text!){
                fValue = (cValue * 9/5)+32
            }
            else{
                fValue = (0 * 9/5)+32
            }
            resultLabel.textColor = UIColor.brown
            resultLabel.text = "Result is \(fValue)"
            
            
            let noOfConv = self.numberOfSucessfulConversions.text
           
            if let cnt = noOfConv {
                var count = Int(cnt) ?? 1
                //count = count ?? 1
                count = count + 1
                self.numberOfSucessfulConversions.text = String(count)
                self.numberOfSucessfulConversions.textColor = UIColor.darkGray
            }
            
            
            
        }
        
        
    }
    
}

