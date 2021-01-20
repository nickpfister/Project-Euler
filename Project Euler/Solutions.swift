//
//  Solutions.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/12/21.
//

import Foundation

public class Solutions {
    
    private static let solutionList: [((Int)-> Int, Int)] =
        [
            /* Problem 0001 */ (sumOfMultiples_better, 1000),
            /* Problem 0002 */ (sumOfEvenFibonacciNumbers_better, 4_000_000),
            /* Problem 0003 */ (largestPrimeFactor, 600_851_475_143),
            /* Problem 0004 */ (largestPalindromeProduct, 3),
            /* Problem 0005 */ (smallestMultiple, 20),
            /* Problem 0006 */ (sumSquareDifference, 100),
            /* Problem 0007 */ (nthPrime, 10001),
            /* Problem 0008 */ (largestProductInSeries, 13),
            /* Problem 0009 */ (specialPythagoreanTriplet, 1000),
            /* Problem 0010 */ (summationOfPrimes, 2_000_000),
            /* Problem 0011 */ (largestProductInGrid, 4),
        ]
    
    public static func executeSolution(index: Int, input: Int) {
        guard index >= 0 && index < solutionList.count else {
            print("Solution index out of range")
            return
        }
        
        let solution = solutionList[index].0
        let start = Date()
        let answer = solution(input)
        let end = Date()
        let timeElapsed = end.timeIntervalSince(start)
    
        print("Problem \(index + 1):\n\tAnswer: \(answer)\n\tTime Elapsed: \(timeElapsed)")
    }
    
    public static func executeSolution(_ index: Int) {
        guard index >= 0 && index < solutionList.count else {
            print("Solution index out of range")
            return
        }
        
        let defaultInput = solutionList[index].1
        
        executeSolution(index: index, input: defaultInput)
    }
}
