//
//  Problem0004.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/11/21.
//

import Foundation

func largestPalindromeProduct(_ digits: Int) -> Int {
    let max = Int(pow(10, Double(digits))) - 3
    let min = Int(pow(10, Double(digits - 1)))
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
