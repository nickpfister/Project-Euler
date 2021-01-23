//
//  ExecutionData.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/22/21.
//

import Foundation

struct ExecutionData {
    let index: Int
    let duration: TimeInterval
    let answer: Int
    var description: String {
        "Problem \(index + 1):\n\tAnswer: \(answer)\n\tTime Elapsed: \(duration)"
    }
}
