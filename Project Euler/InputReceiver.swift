//
//  InputReceiver.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/31/21.
//

import Foundation

protocol InputReceiver: Problem {
    associatedtype Input
    var input: Input { get set }
}
