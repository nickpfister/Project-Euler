//
//  Problem0010.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/15/21.
//

import Foundation

func summationOfPrimes(max: Int) -> Int {
    let largestNumberToSave = Int(sqrt(Double(max)))
    var primes = [2, 3]
    var sum = 5
    var k = 6
    
    func addPrime(_ number: Int) {
        sum += number
        if number <= largestNumberToSave { primes.append(number) }
    }
    
    primeLoop: while k < max - 1 {
        let kPlus = k + 1
        let kMinus = k - 1
        k += 6
        var kPlusIsPrime = true
        var kMinusIsPrime = true
        let max = Int(sqrt(Double(kPlus)))
        for prime in primes {
            guard prime <= max else {
                break
            }
            
            if kPlusIsPrime && kPlus % prime == 0 { kPlusIsPrime = false }
            if kMinusIsPrime && kMinus % prime == 0 { kMinusIsPrime = false }
            if !kPlusIsPrime && !kMinusIsPrime {
                continue primeLoop
            }
        }
        if kMinusIsPrime { addPrime(kMinus) }
        if kPlusIsPrime { addPrime(kPlus) }
    }
    
    return sum
}
