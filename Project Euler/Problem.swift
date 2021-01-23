//
//  Problem.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/22/21.
//

import Foundation

protocol ProblemProtocol
{
    var defaultInput: Int { get }
    var description: String { get }
    
    func solution(input: Int) -> Int
}
