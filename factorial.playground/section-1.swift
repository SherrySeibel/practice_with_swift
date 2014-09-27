// Playground - noun: a place where people can play

import UIKit

func factorial(n: Int) -> Int{
    if n == 0 {
        return 1
    }
    
    var fact = 1
    for i in 1...n {
        fact = fact * i
    }
    return fact
}

println(factorial(5))
