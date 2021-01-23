//
//  Problem0001.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/8/21.
//

class SumOfMultiples : ProblemProtocol {
    
    var defaultInput: Int {
        1000
    }
    
    var description: String {
        "Find the sum of all the multiples of 3 or 5 below 1000."
    }
    
    func solution(input max: Int) -> Int {
        let sumOf3s = stride(from: 3, to: max, by: 3).reduce(0, +)
        let sumOf5s = stride(from: 5, to: max, by: 5).reduce(0, +)
        let sumOf15s = stride(from: 15, to: max, by: 15).reduce(0, +)
        
        return sumOf3s + sumOf5s - sumOf15s
    }
}
