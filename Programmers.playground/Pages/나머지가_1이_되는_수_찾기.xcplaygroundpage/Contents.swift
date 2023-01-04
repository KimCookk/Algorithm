import Foundation
// n    result
// 10    3
// 12    11

//

func solution(_ n:Int) -> Int {
    var result = n - 1
    
    for number in 1...n {
        if(n % number == 1) {
            result = number
            break
        }
    }
        
    return result
}

print(solution(10))
