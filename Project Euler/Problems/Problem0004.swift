//
//  Problem0004.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/11/21.
//

import Foundation

class LargestPalindromeProduct: Problem, InputReceiver {
    var input = 3
    
    var description: String {
        "Find the largest palindrome made from the product of two 3-digit numbers."
    }
    
    func solution() -> Int {
        let digits = input
        let max = 10 ^ digits - 3
        let min = 10 ^ (digits - 1)
        for i in (min...max).reversed() {
            let palindrome = Int(String(i) + String(i).reversed())!
            for i in (min...max).reversed() {
                if (palindrome % i == 0) {
                    let factor = palindrome / i
                    if(String(factor).count == digits){
                        return palindrome
                    }
                }
            }
        }
        return -1
    }
}
