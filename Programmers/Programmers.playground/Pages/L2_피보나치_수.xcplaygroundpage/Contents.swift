// n은 2 이상 100,000 이하의 자연수

func solution(_ n:Int) -> Int {
    var fibonacciArray = Array(repeating: 0, count: n + 1)
    fibonacciArray[0] = 0
    fibonacciArray[1] = 1
    
    for index in 2...n {
        fibonacciArray[index] = (fibonacciArray[index-1] + fibonacciArray[index-2]) % 1234567
    }
    
    guard let result = fibonacciArray.last else {
        return -1
    }
    
    return result
}

func getFibonacciNumber(index: Int) -> Int {
    if(index == 1) {
        return 1
    }
    if(index == 0) {
        return 0
    }
    
    return getFibonacciNumber(index: index - 2) + getFibonacciNumber(index: index - 1)
}
