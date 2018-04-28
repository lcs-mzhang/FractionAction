//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

var validNumerator = 0
var validDenominator = 0

// INPUT
// Collect and filter user input here

while true {
    print("Numerator?")
    guard let rawNumeratorInput = readLine() else {
        continue
    } //Filter out nil input
    guard let numeratorInput = Int(rawNumeratorInput) else {
        continue
    } //Filter out non-integer input
    if numeratorInput < 0 {
        print("Numerator cannot be negative!")
        continue
    } //Filter out input that is negative
    validNumerator = numeratorInput
    
    break
}
while true {
    print("Denominator?")
    guard let rawDenominatorInput = readLine() else {
        continue
    } //Filter out nil input
    guard let denominatorInput = Int(rawDenominatorInput) else {
        continue
    } //Filter out non-integer input
    if denominatorInput < 1 {
        print("Denominator cannot be 0 or lower!")
        continue
    } //Filter out input that is 0 or non-positive integers
    validDenominator = denominatorInput
    
    break
}

// PROCESS
// Implement the primary logic of the problem here

//the following code finds the gcf
//thanks mr euclid

var a = 0
var b = 0
var substitute = 0

if validNumerator >= validNumerator {
    a = validNumerator
    b = validDenominator
} else {
    a = validDenominator
    b = validNumerator
}

while b != 0 {
    substitute = a % b
    a = b
    b = substitute
}
print("The GCF is \(a)")

// OUTPUT
// Report results to the user here

if validNumerator/validDenominator > 0 && validNumerator%validDenominator/a > 0 {
    print("Your mixed fraction is \(validNumerator/validDenominator) \((validNumerator%validDenominator)/a)/\((validDenominator)/a)")
} //print mixed fraction
else if validNumerator%validDenominator/a > 0 {
    print("Your fraction is \((validNumerator%validDenominator)/a)/\((validDenominator)/a)")
} else { //print fraction
    print("Your whole number is \(validNumerator/validDenominator)")
} //print whole number
