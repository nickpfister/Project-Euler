//
//  Problem0012.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/21/21.
//

import Foundation

func highlyDivisibleTriangularNumber(_ minDivisors: Int) -> Int {
    var n = 0
    var divisors = 0
    repeat {
        n += 1
        if n % 2 == 0 {
            divisors = divisorCount(n + 1) * divisorCount(n / 2)
        } else {
            divisors = divisorCount((n + 1) / 2) * divisorCount(n)
        }
    } while divisors <= minDivisors
    
    return n * (n + 1) / 2
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
