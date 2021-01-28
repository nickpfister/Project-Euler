//
//  Problem0016.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/27/21.
//

import Foundation

class PowerDigitSum: ProblemProtocol {
    var defaultInput: Int {
        1000
    }
    
    var description: String {
        "What is the sum of the digits of the number 2^1000?"
    }
    
    func solution(input exponent: Int) -> Int {
        let number = pow(2.0, Double(exponent))
        let stringNumber = String(format: "%.0f", number)
        var sum = 0
        for stringDigit in stringNumber {
            sum += stringDigit.wholeNumberValue ?? 0
        }
        
        return sum
    }
}
