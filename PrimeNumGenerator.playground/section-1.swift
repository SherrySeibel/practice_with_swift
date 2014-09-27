// Playground - noun: a place where people can play

import UIKit
import foundation

func isPrime(n: Int) -> Bool {
    if n < 2 {
        return false
    }
    
    var limit = Int(sqrt(Float(n)))
    if limit < 2 {
        return true
    }
    
    for i in 2...limit {
        if n % i == 0 {
        return false
        }
    }
    return true
}