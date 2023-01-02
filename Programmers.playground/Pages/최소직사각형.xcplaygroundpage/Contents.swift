// [( 가로 , 세로 )] 배열에서 가로 세로 불문 최대값을 선택
// ( 가로 , 세로 ) 짧은 길이 중 최대값을 선택



import Foundation

func solution(_ sizes:[[Int]]) -> Int {
       
    var firstLength = 0 // 가로불문 최댓값
    var secondsLength = 0 // first 짧은길이 최댓값
    let arrayLength = sizes.count
    
    for index in 0..<arrayLength {
        let row = sizes[index][0]
        let column = sizes[index][1]
        print("row: \(row) , column: \(column)")
        
        var loggerLength = 0
        var shorterLength = 0
        if(row > column) {
            loggerLength = row // 70
            shorterLength = column // 30
        }
        else {
            loggerLength = column
            shorterLength = row
        }
        // 가로 세로 불문 최대값을 선택
        if(loggerLength > firstLength) {
            firstLength = loggerLength // 70
        }
        
        if(shorterLength > secondsLength) {
            secondsLength = shorterLength // 50
        }
    }
    
    
    return firstLength * secondsLength
}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))

