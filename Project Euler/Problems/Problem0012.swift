//
//  Problem0012.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/21/21.
//

import Foundation

class HighlyDivisibleTriangularNumber : ProblemProtocol {
    var defaultInput: Int {
        500
    }
    
    var description: String {
        "A Project Euler problem."
    }
    
    func solution(input minDivisors: Int) -> Int {
        var n = 0
        var divisors = 0
        repeat {
            n += 1
            if n % 2 == 0 {
                divisors = divisorCount(n + 1) * divisorCount(n / 2)
            } else {
                divisors = divisorCount((n + 1) / 2) * divisorCount(n)
            }
        } while divisors <= minDivisors
        
        return n * (n + 1) / 2
    }
}
