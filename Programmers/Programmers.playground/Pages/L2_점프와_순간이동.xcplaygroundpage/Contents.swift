import Foundation
// 순강이동은 사용량 x, k칸 점프하면 k만크 사용
// 거리 n 주어졌을 때 건전지 최소 사용량 N 리턴

// 시간초과
//func solution(_ n:Int) -> Int
//{
//    var ans:Int = 0
//
//    let binary = String(n, radix: 2)
//    ans = binary.filter{ char in
//        return char == "1"
//    }.count
//
//    return ans
//
//}

func solution(_ n:Int) -> Int
{
    var ans:Int = 0
    var number = n
    
    while(number != 0) {
        if(number % 2 == 1) {
            ans += 1
        }
        
        number = number / 2
    }

    return ans

}

