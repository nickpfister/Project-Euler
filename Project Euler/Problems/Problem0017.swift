//
//  Problem0017.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/29/21.
//

import Foundation

class NumberLetterCounts: Problem, InputReceiver {
    var input = 1000
    
    var description: String {
        "If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?"
    }
    
    enum NumberLetters: Int {
        case one = 1
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case eleven
        case twelve
        case thirteen
        case fourteen
        case fifteen
        case sixteen
        case seventeen
        case eighteen
        case nineteen
        case twenty = 20
        case thirty = 30
        case forty = 40
        case fifty = 50
        case sixty = 60
        case seventy = 70
        case eighty = 80
        case ninety = 90
        case hundred = 100
        case thousand = 1000
    }
    
    func solution() -> Int {
        let number = input
        var count = 0
        for i in 1...number {
            count += numberToLetters(number: i).count
        }
        
        return count
    }
    
    func numberToLetters(number: Int) -> String {
        switch number {
        case 1...19:
            return "\(NumberLetters(rawValue: number)!)"
        case 20...99:
            let remainder = number % 10
            let tens = number - remainder
            return "\(NumberLetters(rawValue: tens)!)" + numberToLetters(number: remainder)
        case 100...999:
            let remainder = number % 100
            let hundreds = number / 100
            let ending = remainder > 0 ? "and" + numberToLetters(number: remainder): ""
            return "\(NumberLetters(rawValue: hundreds)!)" + "\(NumberLetters(rawValue: 100)!)" + ending
        case 1000:
            return "\(NumberLetters(rawValue: 1)!)" + "\(NumberLetters(rawValue: 1000)!)"
        default:
            return ""
        }
    }
}
