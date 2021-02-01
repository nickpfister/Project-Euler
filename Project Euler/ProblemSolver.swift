//
//  ProblemSolver.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/22/21.
//

import Foundation

class ProblemSolver {
    private class func getExecutionData(problem: Problem, index: Int? = nil) -> ExecutionData {
        let start = Date()
        let answer = problem.solution()
        let end = Date()
        let duration = end.timeIntervalSince(start)
        
        return ExecutionData.init(index: index, duration: duration, answer: answer, description: problem.description)
    }
    private class func getExecutionData(index: Int) -> ExecutionData {
        let problem = ProblemCollection[index]
        return getExecutionData(problem: problem, index: index)
    }
    
    class func executeWithCustomInput<T, U: InputReceiver>(input: T, problem: U) where U.Input == T {
        problem.input = input
        print(getExecutionData(problem: problem).humanReadable)
    }
    
    class func executeSolution(problem: Problem) {
        print(getExecutionData(problem: problem).humanReadable)
    }
    
    class func executeSolution(_ index: Int) {
        print(getExecutionData(index: index).humanReadable)
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
