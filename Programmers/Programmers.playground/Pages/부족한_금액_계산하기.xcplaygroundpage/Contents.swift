import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = 0
    
    var range = Array(1...count)
    
    let sum = range.reduce(0) { preResult, current in
        return preResult + current * price
    }
    
    if(sum > money)
    {
        answer = Int64(sum - money)
    }
    return answer
}

print(solution(3,20,4))
