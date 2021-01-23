//
//  ProblemSolver.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/22/21.
//

import Foundation

class ProblemSolver {
    
    private class func getExecutionData(index: Int, solutionWrapper: () -> Int) -> ExecutionData {
        let start = Date()
        let answer = solutionWrapper()
        let end = Date()
        let duration = end.timeIntervalSince(start)
        
        return ExecutionData.init(index: index, duration: duration, answer: answer)
    }
    
    private class func wrapSolution(problem: ProblemProtocol, input inputOverride: Int? = nil) -> () -> Int {
        let input = inputOverride ?? problem.defaultInput
        return { problem.solution(input: input) }
    }
    
    class func executeSolution(_ index: Int, input: Int? = nil) {
        let solutionWrapper = wrapSolution(problem: ProblemCollection[index], input: input)
        let data = getExecutionData(index: index, solutionWrapper: solutionWrapper)
        print(data.description)
    }
    
    class func executeLastSolution() {
        executeSolution(ProblemCollection.count - 1)
    }
    
    class func showLongestRunningSolutions() {
        var allExecutionData = [ExecutionData]()
        for i in 0..<ProblemCollection.count {
            let solutionWrapper = wrapSolution(problem: ProblemCollection[i])
            let data = getExecutionData(index: i, solutionWrapper: solutionWrapper)
            allExecutionData.append(data)
        }
        allExecutionData.sort(by: {$0.duration > $1.duration})
        for i in 0...2 { print(allExecutionData[i].description) }
    }
}
