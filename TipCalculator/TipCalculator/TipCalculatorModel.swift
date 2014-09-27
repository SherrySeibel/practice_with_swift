//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Sherry on 9/27/14.
//  Copyright (c) 2014 Sherry. All rights reserved.
//

import Foundation

class TipCalculator {
    
    var total: Double
    var taxPrecent: Double
    var subtotal: Double {
        get {
            return total / (taxPrecent + 1)
        }
    }
    
    init(total: Double, taxPrecent: Double) {
        self.total = total
        self.taxPrecent = taxPrecent
    }
    
    func calcTipWithTipPrecent(tipPrecent: Double) -> Double {
        return subtotal * tipPrecent
    }
    
    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInferred {
            let intPrecent = Int(possibleTip * 100)
            
            retval[intPrecent] = calcTipWithTipPrecent(possibleTip)
        }
        return retval
    }
}
