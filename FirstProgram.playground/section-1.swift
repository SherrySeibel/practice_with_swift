// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let tutorialTeam: Int = 56
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam

totalTeam += 1

let priceInferred = 19.99
let priceExplicit: Double = 19.99

let onSaleInferred = true
let onSaleExplicit: Bool = false

let nameInferred = "Name!"
let nameExplicit: String = "Another Name!"

if onSaleInferred {
    println("\(nameInferred) on sale for \(priceInferred)")
} else {
  println("\(nameInferred) at regular price: \(priceInferred)!")
}
