//
//  Problem0007.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/13/21.
//

import Foundation

func nthPrime(_ n : Int) -> Int {
    var primes = [2, 3]
    
    var iteration = 1
    while(primes.count < n) {
        let kPlus = iteration * 6 + 1
        let kMinus = kPlus - 2
        let max = Int(sqrt(Double(kPlus)))
        var kPlusIsPrime = true, kMinusIsPrime = true
        for prime in primes {
            if prime > max { break }
            kPlusIsPrime = kPlusIsPrime ? kPlus % prime != 0 : false
            kMinusIsPrime = kMinusIsPrime ? kMinus % prime != 0 : false
            if !kPlusIsPrime && !kMinusIsPrime { break }
        }
        if kMinusIsPrime { primes.append(kMinus) }
        if kPlusIsPrime && primes.count < n { primes.append(kPlus) }
        iteration += 1
    }
    
    return primes[primes.count - 1]
}
