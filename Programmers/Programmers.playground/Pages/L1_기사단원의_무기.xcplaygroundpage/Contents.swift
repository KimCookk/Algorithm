import Foundation
// 약수의 수가 공격력
// limit 제한
// power : 초과한 기사들의 무기 공격력
func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var numbers = Array.init(repeating: 0, count: number)
    
    numbers.indices.forEach{ index in
        numbers[index] = getCountOfDivisor(index + 1)
    }
    
    //print(numbers)
    
    let numbersCount = numbers.count
    let filteredNumbers = numbers.filter { item in
        return item <= limit
    }
    
    let sum = filteredNumbers.reduce(0, +) + (( numbersCount - filteredNumbers.count ) * power )
    
    return sum
    
}

func getCountOfDivisor(_ number: Int) -> Int {
    var count = 0
    
    let range = 1...Int(sqrt(Double(number)))
    
    for index in range {
        if(number % index == 0) {
            if(index == number / index) {
                count += 1
            }
            else {
                count += 2
            }
        }
    }
    return count
}

solution(10, 3, 2)
