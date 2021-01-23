//
//  Problem0009.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/14/21.
//

import Foundation

class SpecialPythagoreanTriplet : ProblemProtocol {
    
    var defaultInput: Int {
        1000
    }
    
    var description: String {
        "There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc."
    }
    
    func solution(input sum: Int) -> Int {
        
        func calculateA(b: Int) -> Int {
            return (sum * b - (sum * sum / 2)) / (b - sum)
        }
        
        for b in 1...(sum - 2) {
            let a = calculateA(b: b)
            let c = sum - a - b
            if a < sum && c < sum {
                if a * a + b * b == c * c {
                    return a * b * c
                }
            }
        }
        
        return -1
    }
}
