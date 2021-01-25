//
//  Solutions.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/12/21.
//

import Foundation

struct ProblemCollection {
    
    private static let problems: [ProblemProtocol] =
        [
            /* Problem 0001 */ SumOfMultiples(),
            /* Problem 0002 */ SumOfEvenFibonacciNumbers(),
            /* Problem 0003 */ LargestPrimeFactor(),
            /* Problem 0004 */ LargestPalindromeProduct(),
            /* Problem 0005 */ SmallestMultiple(),
            /* Problem 0006 */ SumSquareDifference(),
            /* Problem 0007 */ NthPrime(),
            /* Problem 0008 */ LargestProductInSeries(),
            /* Problem 0009 */ SpecialPythagoreanTriplet(),
            /* Problem 0010 */ SummationOfPrimes(),
            /* Problem 0011 */ LargestProductInGrid(),
            /* Problem 0012 */ HighlyDivisibleTriangularNumber(),
            /* Problem 0013 */ LargeSum()
        ]
    
    static subscript(index: Int) -> ProblemProtocol {
        get {
            assert(index < problems.count, "Solution index out of range")
            return problems[index]
        }
    }
    
    static var count : Int {
        problems.count
    }
}
