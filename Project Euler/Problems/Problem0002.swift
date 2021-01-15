//
//  Problem0002.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/10/21.
//

func sumOfEvenFibonacciNumbers(_ max: Int) -> Int {
    var sum = 0
    var cur = 1
    var prev = 1
    
    repeat {
        if (cur % 2 == 0) {
            sum += cur
        }
        let next = cur + prev
        prev = cur
        cur = next
        
    } while (cur <= max)
    
    return sum
}

func sumOfEvenFibonacciNumbers_better(_ max: Int) -> Int {
    var sum = 0
    var cur = 2
    var prev = 0
    
    repeat {
        sum += cur
        let next = 4 * cur + prev
        prev = cur
        cur = next
    } while (cur <= max)
    
    
    return sum
}
