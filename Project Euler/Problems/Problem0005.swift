//
//  Problem0005.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/11/21.
//

import Foundation

class SmallestMultiple : ProblemProtocol {
    var defaultInput: Int {
        20
    }
    
    var description: String {
        "A Project Euler problem."
    }
    
    func solution(input max: Int) -> Int {
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
            product *= Int(pow(Double(number), Double(count)))
        }
        return product
    }
}
