//
//  ViewController.swift
//  TipCalculator
//
//  Created by Sherry on 9/27/14.
//  Copyright (c) 2014 Sherry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalCostTextField: UITextField!
    @IBOutlet weak var totalCostLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fifteenPercentPressed(sender: AnyObject) {
        self.updateTotalCostLabelForTip(0.15)
    }

    @IBAction func eightteenPercentPressed(sender: AnyObject) {
        self.updateTotalCostLabelForTip(0.18)
    }

    @IBAction func twentyPercentPressed(sender: AnyObject) {
        self.updateTotalCostLabelForTip(0.20)
    }

    func updateTotalCostLabelForTip(tip: Double) {
        totalCostTextField.resignFirstResponder()

        var total = (totalCostTextField.text as NSString).doubleValue

        let tipCalculator: TipCalculator = TipCalculator(total: total, taxPrecent: 0.07)

        var totalCost = total + tipCalculator.calcTipWithTipPrecent(tip)

        totalCostLabel.text = "Total Cost: $\(totalCost)"
    }
}
