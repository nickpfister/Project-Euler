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
    
    class func executeSolution(_ index: Int, input: Int) {
        let solutionWrapper = wrapSolution(problem: ProblemCollection[index])
        let data = getExecutionData(index: index, solutionWrapper: solutionWrapper)
        print(data.description)
    }
    
    class func executeSolution(_ index: Int) {
        let problem = ProblemCollection[index]
        let solutionWrapper = wrapSolution(problem: problem, input: problem.defaultInput)
        let data = getExecutionData(index: index, solutionWrapper: solutionWrapper)
        print(data.description)
    }
    
    class func executeLastSolution() {
        executeSolution(ProblemCollection.count - 1)
    }
}
