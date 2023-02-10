import Foundation

func solution(_ numbers:[Int]) -> Int {
    let zeroToTen = 0...9
    let result = zeroToTen.filter{ element in
        return !numbers.contains(element)
    }.reduce(0) { preResult, cur in
        return preResult + cur
    }
    
    return result
}

print(solution([1,2,3,4,6,7,8,0]))
