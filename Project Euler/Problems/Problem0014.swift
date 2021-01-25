//
//  Problem0014.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/24/21.
//

import Foundation

class LongestCollatzSequence : ProblemProtocol {
    var defaultInput: Int {
        1_000_000
    }
    
    var description: String {
        "Which starting number, under one million, produces the longest chain?"
    }
    
    func solution(input: Int) -> Int {
        var longestChain = 0
        var longestChainSeed = 0
        for i in 1..<input {
            let length = collatzLength(i)
            if length > longestChain {
                longestChain = length
                longestChainSeed = i
            }
        }
        return longestChainSeed
    }
  
}
