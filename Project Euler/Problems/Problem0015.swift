//
//  Problem0015.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/25/21.
//

import Foundation

class LatticePaths : ProblemProtocol {
    var defaultInput: Int {
        20
    }
    
    var description: String {
        "How many lattice paths are there through a 20×20 grid?"
    }
    
    func solution(input: Int) -> Int {
        let graph = generateGraph(size: input)
        return -1
    }
    
    func generateGraph(size: Int) -> [Int:[Int]] {
        var graph = [Int:[Int]]()
        let dim = size + 1
        for i in 0..<dim*dim {
            if i % size == 0 {
                graph[i] = [i + dim]
            } else {
                graph[i] = [i + dim, i + 1]
            }
        }
        return graph
    }
}
