//
//  Problem0012.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/21/21.
//

import Foundation

func highlyDivisibleTriangularNumber(_ minDivisors: Int) -> Int {
    var triangularNumber = 0
    var increment = 1
    var divisors = 1
    repeat {
        triangularNumber += increment
        increment += 1
        divisors = divisorCount(triangularNumber)
    } while divisors <= minDivisors
    
    return triangularNumber
}

func divisorCount(_ number: Int) -> Int {
    guard number > 0 else {
        return 0
    }
    
    var divisors: Set<Int> = []
    let max = Int(sqrt(Double(number)))
    
    for i in 1...max {
        if number % i == 0 {
            divisors.insert(i)
            divisors.insert(number/i)
        }
    }
    
    return divisors.count
}
