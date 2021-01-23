//
//  Problem0006.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/13/21.
//

import Foundation

class SumSquareDifference : ProblemProtocol {
    var defaultInput: Int {
        100
    }
    
    var description: String {
        "A Project Euler problem."
    }
    
    func solution(input max: Int) -> Int {
        let sums = (1...max).reduce(0, +)
        let squareOfSums = sums * sums
        let sumOfSquares = (1...max).reduce(0, { $0 + $1 * $1} )
        return squareOfSums - sumOfSquares
    }
}
