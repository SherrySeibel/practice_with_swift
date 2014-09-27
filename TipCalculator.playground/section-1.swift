// Playground - noun: a place where people can play

import UIKit

class TipCalculator {
    let total: Double
    let taxPrecent: Double
    let subtotal: Double
    
    init(total: Double, taxPrecent: Double) {
        self.total = total
        self.taxPrecent = taxPrecent
        subtotal = total / (taxPrecent + 1)
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

let tipCalc = TipCalculator(total: 33.25, taxPrecent: 0.06)
tipCalc.returnPossibleTips()
