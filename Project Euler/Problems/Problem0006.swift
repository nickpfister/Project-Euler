//
//  Problem0006.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/13/21.
//

import Foundation

class SumSquareDifference: Problem, InputReceiver {
    var input = 100
    
    var description: String {
        "Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum."
    }
    
    func solution() -> Int {
        let max = input
        let sums = (1...max).reduce(0, +)
        let squareOfSums = sums * sums
        let sumOfSquares = (1...max).reduce(0, { $0 + $1 * $1} )
        return squareOfSums - sumOfSquares
    }
}
