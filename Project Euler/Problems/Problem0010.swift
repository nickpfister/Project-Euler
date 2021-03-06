//
//  Problem0010.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/15/21.
//

import Foundation

class SummationOfPrimes: Problem, InputReceiver {
    var input = 2_000_000
    
    var description: String {
        "Find the sum of all the primes below two million."
    }
    
    func solution() -> Int {
        let max = input
        let largestNumberToSave = sqrtToInt(max)
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
            let max = sqrtToInt(kPlus)
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
}
