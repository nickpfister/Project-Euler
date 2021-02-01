//
//  Problem0015.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/25/21.
//

import Foundation

class LatticePaths: Problem, InputReceiver {
    var input = 20
    
    var description: String {
        "How many lattice paths are there through a 20×20 grid?"
    }
    
    // Store the path counts for each node in this. Instead of counting them for every iteration, we can refer to this
    var nodePathCountLookup = [Int:Int]()
    
    func solution() -> Int {
        nodePathCountLookup = [Int:Int]()
        let graph = generateGraph(size: input)
        return getPathCount(graph: graph, start: 0)
    }
    
    func generateGraph(size: Int) -> [Int:[Int]] {
        var graph = [Int:[Int]]()
        let dim = size + 1
        let nodeCount = dim*dim
        for i in 0..<nodeCount {
            
            if i == nodeCount - 1 {
                graph[i] = []
            } else if (i+1) % dim == 0 {
                graph[i] = [i + dim]
            } else if i >= nodeCount - dim {
                graph[i] = [i + 1]
            } else
            {
                graph[i] = [i + dim, i + 1]
            }
        }
        return graph
    }
    
    func getPathCount(graph: [Int:[Int]], start: Int) -> Int {
        var count = 0
        if graph[start]?.count == 0 {
            return 1
        } else if nodePathCountLookup[start] != nil {
            return nodePathCountLookup[start]!
        }
        
        for i in graph[start]! {
            count += getPathCount(graph: graph, start: i)
        }
        nodePathCountLookup[start] = count
        return count
    }
}
