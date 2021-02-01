//
//  Problem0005.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/11/21.
//

import Foundation

class SmallestMultiple: Problem, InputReceiver {
    var input = 20
    
    var description: String {
        "What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?"
    }
    
    func solution() -> Int {
        let max = input
        guard max > 3 else {
            return max
        }
        
        var factors = [Int: Int]()
        
        for i in 2...max {
            let primeFactors = primeFactorization(i)
            var counts = [Int: Int]()
            primeFactors.forEach { counts[$0, default: 0] += 1 }
            for (number, count) in counts {
                if factors[number] == nil || factors[number]! < count {
                    factors[number] = count
                }
            }
        }
        
        var product = 1
        for (number, count) in factors {
            product *= number ^ count
        }
        return product
    }
}
