import Foundation
// 홀수는 n + 1이랑 붙게되고
// 짝수는 n - 1이랑 붙게됨
// N : 인원 수 / 부전승 x
// answer : 몇 번재 라운드에서 붙는가
func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 1
    var frontNumber = a < b ? a : b
    var backNumber = a > b ? a : b

    while(true) {
        let frontOpponent = frontNumber % 2 == 0 ? frontNumber - 1 : frontNumber + 1
        let backOpponent = backNumber % 2 == 0 ? backNumber - 1 : backNumber + 1
        if(frontOpponent == backNumber) {
            break
        }
        frontNumber = Int(ceil(Double(frontNumber) / 2))
        backNumber = Int(ceil(Double(backOpponent) / 2))
        answer += 1
    }

    return answer
}

solution(8, 4, 7)
