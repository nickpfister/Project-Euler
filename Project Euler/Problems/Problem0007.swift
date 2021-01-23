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
        "A Project Euler problem."
    }
    
    func solution(input n: Int) -> Int {
        let primes = nPrimes(n)
        return primes[primes.count - 1]
    }
}

