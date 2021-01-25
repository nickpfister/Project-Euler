//
//  ProblemSolver.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/22/21.
//

import Foundation

class ProblemSolver {
    
    private class func getExecutionData(index: Int, input inputOverride: Int? = nil) -> ExecutionData {
        let problem = ProblemCollection[index]
        let solutionWrapper = wrapSolution(problem: problem, input: inputOverride)
        let start = Date()
        let answer = solutionWrapper()
        let end = Date()
        let duration = end.timeIntervalSince(start)
        
        return ExecutionData.init(index: index, duration: duration, answer: answer, description: problem.description)
    }
    
    private class func wrapSolution(problem: ProblemProtocol, input inputOverride: Int?) -> () -> Int {
        let input = inputOverride ?? problem.defaultInput
        return { problem.solution(input: input) }
    }
    
    class func executeSolution(_ index: Int, input: Int? = nil) {
        print(getExecutionData(index: index, input: input).humanReadable)
    }
    
    class func executeLastSolution() {
        executeSolution(ProblemCollection.count - 1)
    }
    
    class func showLongestRunningSolutions() {
        var allExecutionData = [ExecutionData]()
        for i in 0..<ProblemCollection.count {
            allExecutionData.append(getExecutionData(index: i))
        }
        allExecutionData.sort(by: {$0.duration > $1.duration})
        let totalDuration = allExecutionData.map({$0.duration}).reduce(0, +)
        print("Top 3 longest running solutions:\n")
        for i in 0...2 { print(allExecutionData[i].humanReadable + "\n") }
        print("Total duration of \(ProblemCollection.count) problems: \(totalDuration)s")
    }
}
