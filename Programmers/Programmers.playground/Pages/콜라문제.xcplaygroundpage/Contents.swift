import Foundation

// a : 마트에 줘야 하는 수
// b : 마트에서 받는 수
// n : 초기 콜라 개수

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var result: Int = 0
    var cokeBottle = n
    
    while(true) {
        let quotient = cokeBottle / a
        let remainder = cokeBottle % a
        
        result += ( quotient * b )
        cokeBottle = ( quotient * b ) + remainder
        
        if(cokeBottle < a) {
            break
        }
    }
    
    return result
}


solution(3, 1, 20)
