//
//  Problem.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/22/21.
//

import Foundation

protocol Problem: AnyObject {
    var description: String { get }
    func solution() -> Int
}
