//
//  ViewController.swift
//  AstroTorch
//
//  Created by Esh on 12/11/18.
//  Copyright © 2018 cieo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.red
        self.torchButton.titleLabel?.textColor = UIColor.green
    }


    @IBOutlet weak var torchButton: UIButton!
    @IBAction func changeColourAction(_ sender: UIButton) {
        
        if self.view.backgroundColor == UIColor.green {
            self.view.backgroundColor = UIColor.red
        }
        else{
            self.view.backgroundColor = UIColor.green
        }
        
    }
}

