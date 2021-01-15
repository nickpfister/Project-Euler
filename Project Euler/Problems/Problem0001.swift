func sumOfMultiples(_ max: Int) -> Int {
    var sum = 0
    
    for i in 1..<max {
        if(i % 3 == 0 || i % 5 == 0){
            sum += i
        }
    }
    
    return sum
}

func sumOfMultiples_better(_ max: Int) -> Int {
    let sumOf3s = stride(from: 3, to: max, by: 3).reduce(0, +)
    let sumOf5s = stride(from: 5, to: max, by: 5).reduce(0, +)
    let sumOf15s = stride(from: 15, to: max, by: 15).reduce(0, +)
    
    return sumOf3s + sumOf5s - sumOf15s
}
