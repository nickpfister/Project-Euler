//
//  Problem0002.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/10/21.
//

class SumOfEvenFibonacciNumbers: ProblemProtocol {
    var defaultInput: Int {
        4_000_000
    }
    
    var description: String {
        ""
    }
    
    func solution(input max: Int) -> Int {
        var sum = 0
        var cur = 2
        var prev = 0
        
        repeat {
            sum += cur
            let next = 4 * cur + prev
            prev = cur
            cur = next
        } while (cur <= max)
        
        return sum
    }
}
