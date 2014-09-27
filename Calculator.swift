//  Calculator.swift
//  For calculating tips!
//
//  Created by Sherry on 9/26/14.

import Foundation

class TipCalculator {

    let total: Double
    let taxPrecent: Double
    let subtotal: Double

    init(total:Double, taxPrecent:Double) {
        self.total = total
        self.taxPrecent = taxPrecent
        subtotal = total / (taxPrecent + 1)
    }

    func calcTipWithTipPct(tipPrecent:Double) -> Double {
        return subtotal * tipPrecent
    }

    func printPossibleTips() {
        println("15%: \(calcTipWithTipPct(0.15))")
        println("18%: \(calcTipWithTipPct(0.18))")
        println("20%: \(calcTipWithTipPct(0.20))")
    }

}

let tipCalc = TipCalculator(total: 33.25, taxPrecent: 0.06)
tipCalc.printPossibleTips()
