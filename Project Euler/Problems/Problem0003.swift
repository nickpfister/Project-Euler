//
//  Problem0003.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/10/21.
//

import Foundation

class LargestPrimeFactor : ProblemProtocol {
    var defaultInput: Int {
        600_851_475_143
    }
    
    var description: String {
        What is the largest prime factor of the number 600851475143 ?
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


