//
//  Problem0007.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/13/21.
//

import Foundation

class NthPrime: Problem, InputReceiver {
    var input = 10001
    
    var description: String {
        "What is the 10 001st prime number?"
    }
    
    func solution() -> Int {
        let n = input
        let primes = nPrimes(n)
        return primes[primes.count - 1]
    }
}

