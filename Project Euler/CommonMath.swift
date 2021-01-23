//
//  CommonMath.swift
//  Project Euler
//
//  Created by Nick Pfister on 1/22/21.
//

import Foundation

func isPrime(_ number: Int) -> Bool {
    guard number != 2 && number != 3 else {
        return true
    }
    
    guard number % 2 != 0 && number % 3 != 0 else {
        return false
    }
    
    let upper = Int(sqrt(Double(number)))
    var step = 1
    var test = 6
    while test <= upper {
        if number % (test + 1) == 0 || number % (test - 1) == 0 {
            return false
        }
        step += 1
        test = step * 6
    }
    
    return true
}

func primeFactorization(_ number: Int) -> [Int] {
    guard !isPrime(number) else {
        return [number]
    }
    
    var factors = [Int]()
    var smallestFactor = 1
    for i in 2..<number {
        if number % i == 0 {
            smallestFactor = i
            break
        }
    }
    factors.append(smallestFactor)
    factors += primeFactorization(number/smallestFactor)
    return factors
}

func nPrimes(_ n : Int) -> [Int] {
    var primes = [2, 3]
    
    var iteration = 1
    while(primes.count < n) {
        let kPlus = iteration * 6 + 1
        let kMinus = kPlus - 2
        let max = Int(sqrt(Double(kPlus)))
        var kPlusIsPrime = true, kMinusIsPrime = true
        for prime in primes {
            if prime > max { break }
            kPlusIsPrime = kPlusIsPrime ? kPlus % prime != 0 : false
            kMinusIsPrime = kMinusIsPrime ? kMinus % prime != 0 : false
            if !kPlusIsPrime && !kMinusIsPrime { break }
        }
        if kMinusIsPrime { primes.append(kMinus) }
        if kPlusIsPrime && primes.count < n { primes.append(kPlus) }
        iteration += 1
    }
    
    return primes
}

func divisors(_ number: Int) -> Int {
    guard number > 0 else {
        return 0
    }
    
    var divisors: Set<Int> = []
    let max = Int(sqrt(Double(number)))
    
    for i in 1...max {
        if number % i == 0 {
            divisors.insert(i)
            divisors.insert(number/i)
        }
    }
    
    return divisors.count
}
