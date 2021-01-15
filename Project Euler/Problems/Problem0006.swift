//
//  Problem0006.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/13/21.
//

import Foundation

func sumSquareDifference(_ max: Int) -> Int {
    let sums = (1...max).reduce(0, +)
    let squareOfSums = sums * sums
    let sumOfSquares = (1...max).reduce(0, { $0 + $1 * $1} )
    return squareOfSums - sumOfSquares
}
