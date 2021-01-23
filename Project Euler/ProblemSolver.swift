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
    
    private class func wrapSolution(problem: ProblemProtocol, input inputOverride: Int?) -> () -> Int {
        let input = inputOverride ?? problem.defaultInput
        return { problem.solution(input: input) }
    }
    
    class func executeSolution(_ index: Int,_ input: Int? = nil) {
        let solutionWrapper = wrapSolution(problem: ProblemCollection[index], input: input)
        let data = getExecutionData(index: index, solutionWrapper: solutionWrapper)
        print(data.description)
    }
    
    class func executeLastSolution() {
        executeSolution(ProblemCollection.count - 1)
    }
}
