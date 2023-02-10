import Foundation

//  nums    result
//  [1,2,3,4]    1
//  [1,2,7,6,4]    4
// 소수 판단 메소드를 통해 완전 탐색을 통한 해결

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    let numsCount = nums.count
    for i in 0...numsCount-3 {
        
        for j in i+1...numsCount-2 {
        
            for k in j+1...numsCount-1 {
                if(checkPrimeNumber(nums[i] + nums[j] + nums[k])) {
                    
                    answer += 1
                }
            }
        }
    }
    return answer
}

func checkPrimeNumber(_ number: Int) -> Bool {
    if(number <= 1) {
        return false
    }
    
    for divider in 2..<number {
        if(number % divider == 0) {
            return false
        }
    }
    print(number)
    return true
}
