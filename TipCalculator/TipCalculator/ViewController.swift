//
//  ViewController.swift
//  TipCalculator
//
//  Created by Sherry on 9/27/14.
//  Copyright (c) 2014 Sherry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalCostLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        totalCostLabel.text = "Total Cost: " + "$15"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fifteenPercentPressed(sender: AnyObject) {
    
    }

    @IBAction func eightteenPercentPressed(sender: AnyObject) {
    }
    @IBAction func twentyPercentPressed(sender: AnyObject) {
    }
}

