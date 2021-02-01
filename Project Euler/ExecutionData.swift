//
//  ExecutionData.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/22/21.
//

import Foundation

struct ExecutionData {
    let index: Int?
    let duration: TimeInterval
    let answer: Int
    let description: String
    var humanReadable: String {
        """
        Problem\(index != nil ? " \(index!)": ""):
            Description: \(description)
            Answer: \(answer)
            Time Elapsed: \(duration)s
        """
    }
}
