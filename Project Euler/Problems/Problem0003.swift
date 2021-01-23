//
//  Problem0003.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/10/21.
//

import Foundation

class ProblemProtocolTemplate : ProblemProtocol {
    var defaultInput: Int {
        1000
    }
    
    var description: String {
        "A Project Euler problem."
    }
    
    func solution(input: Int) -> Int {
        return -1
    }
}

class LargestPrimeFactor : ProblemProtocol {
    var defaultInput: Int {
        600_851_475_143
    }
    var description: String {
        "A Project Euler problem."
    }
    
    func solution(input number: Int) -> Int {
        if (isPrime(number)) {
            return number
        }
        
        let upper = Int(sqrt(Double(number)))
        
        for i in (2..<upper).reversed() {
            if (number % i == 0 && isPrime(i)){
                return i
            }
        }
        
        return 1
    }
}


