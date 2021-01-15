import Foundation

func smallestMultiple(_ max: Int) -> Int {
    guard max > 3 else {
        return max
    }
    
    var factors = [Int: Int]()
    
    for i in 2...max {
        let primeFactorization = getPrimeFactorization(i)
        var counts = [Int: Int]()
        primeFactorization.forEach { counts[$0, default: 0] += 1 }
        for (number, count) in counts {
            if factors[number] == nil || factors[number]! < count {
                factors[number] = count
            }
        }
    }
    
    var product = 1
    for (number, count) in factors {
        product *= Int(pow(Double(number), Double(count)))
    }
    return product
}

func getPrimeFactorization(_ number: Int) -> [Int] {
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
    factors += getPrimeFactorization(number/smallestFactor)
    return factors
}
