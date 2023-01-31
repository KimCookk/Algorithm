func solution(_ n:Int, _ m:Int) -> [Int] {
    var result: [Int] = []
    
    result.append(getGCD(n,m))
    result.append(getLCM(n,m))
    
    
    return result
}

func getGCD(_ n: Int, _ m: Int) -> Int {
    var result: Int = 0
    
    for i in stride(from: min(m, n), through: 1, by: -1) {
        
        if(n % i == 0 && m % i == 0) {
            result = i
            break
        }
    }

    return result
}

func getLCM(_ n: Int, _ m: Int) -> Int {
    var result: Int = 0
   
    var nArray: Set<Int> = []
    var mArray: Set<Int> = []
    
    for i in 1...m {
        nArray.insert(n * i)
    }
    
    for i in 1...n {
        mArray.insert(m * i)
    }
    
    result = nArray.intersection(mArray).min()!
    return result
}


