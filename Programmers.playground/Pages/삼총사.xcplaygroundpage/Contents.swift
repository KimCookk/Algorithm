import Foundation
// 나의 풀이
// 완전 탐색..?
// 깊이우선탐색 //

func solution(_ number:[Int]) -> Int {

    var tempSum = 0
    var resultCount = 0

    var firstNumber = 0
    var secondsNumber = 0
    var thirdNumber = 0
    
    let arrayLength = number.count

    for firstIndex in 0..<arrayLength {
        firstNumber = number[firstIndex]
        if(firstIndex + 1 < arrayLength) {
            for secondsIndex in firstIndex + 1..<arrayLength {
                secondsNumber = number[secondsIndex]
                if(secondsIndex + 1 < arrayLength) {
                    for thirdIndex in secondsIndex + 1..<arrayLength {
                        thirdNumber = number[thirdIndex]
                        tempSum = firstNumber + secondsNumber + thirdNumber
                        print("firstNumber : \(firstNumber), secondsNumber : \(secondsNumber), thirdNumber : \(thirdNumber)")
                        if(tempSum == 0) {
                            resultCount += 1
                        }
                        tempSum = 0
                    }
                }
            }
        }
    }

    return resultCount
}

solution([-3, -2, -1, 0, 1, 2, 3])
// 깊이 탐색으로 풀어보기
