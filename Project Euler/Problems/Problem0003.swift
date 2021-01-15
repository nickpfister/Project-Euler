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

func largestPrimeFactor(_ number: Int) -> Int {
    if (isPrime(number)) {
        return number
    }
    
    let upper = Int(sqrt(Double(number)))
    
    for i in (2..<upper).reversed() {
        if (number % i == 0 && isPrime(i)){
            return i
        }
    }
    
    return 1
}
