//
//  Problem0007.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/13/21.
//

import Foundation

class NthPrime : ProblemProtocol {
    
    var defaultInput: Int {
        10001
    }
    
    var description: String {
        "What is the 10 001st prime number?"
    }
    
    func solution(input n: Int) -> Int {
        let primes = nPrimes(n)
        return primes[primes.count - 1]
    }
}

