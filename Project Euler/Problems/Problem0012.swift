//
//  Problem0012.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/21/21.
//

import Foundation

class HighlyDivisibleTriangularNumber: Problem, InputReceiver {
    var input = 500
    
    var description: String {
        "What is the value of the first triangle number to have over five hundred divisors?"
    }
    
    func solution() -> Int {
        let minDivisors = input
        var n = 0
        var divisorCount = 0
        repeat {
            n += 1
            if n % 2 == 0 {
                divisorCount = divisors(n + 1) * divisors(n / 2)
            } else {
                divisorCount = divisors((n + 1) / 2) * divisors(n)
            }
        } while divisorCount <= minDivisors
        
        return n * (n + 1) / 2
    }
}
