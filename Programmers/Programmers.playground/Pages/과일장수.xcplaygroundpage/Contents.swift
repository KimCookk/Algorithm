import Foundation
// k : 최고등급
// m : 담는 개수
// score : 사과

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var resultBenifit: Int = 0
    var sortedScore: [Int] = []
    sortedScore = score.sorted()
    var index: Int = 1

    while(true) {
        guard let pick = sortedScore.popLast() else {
            break
        }
        print("pick : \(pick) , index : \(index) , \(sortedScore)")
        if(index % m == 0) { // 상자의 마지막 사과
            resultBenifit += (pick * m)
            print("result : \(resultBenifit)")
        }
        index += 1
    }
    return resultBenifit
}


print(solution(3,4,[1, 2, 3, 1, 2, 3, 1]))
print(solution(4, 3, [4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2]))
