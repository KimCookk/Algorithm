// Dictionary 활용하여 window slicing으로 처리해야겠다.
// 나의 풀이
import Foundation

let numberDictionary = ["one":1, "two":2, "three":3, "four":4, "five":5, "six":6, "seven":7, "eight":8, "nine":9, "zero":0]

func solution(_ input: String) -> Int {
    var inputArray = Array(input)
    var resultString: String = ""
   /// one123five
    var window = ""
    // window를 비워줘야하는 조건
    // 1. 숫자인 경우
    // 2. string이지만 숫자로 변환이 가능한 경우
    inputArray.forEach{ inputChar in
        let inputStr = String(inputChar)
        window += inputStr
        print(window)
        if(checkNumber(window)){
            resultString += inputStr
            window = ""
        }
        else {
            if let numberString = checkNumberString(window) {
                resultString += numberString
                window = ""
            }
        }
    }
    
    guard let result = Int(resultString) else {
        return -1
    }
    
    return result
}

func checkNumber(_ input: String) -> Bool {
    guard let number = Int(input) else {
        return false
    }
    return true
}

func checkNumberString(_ input: String) -> String? {
    guard let number = numberDictionary[input] else {
        return nil
    }
    return "\(number)"
}

print(solution("one4seveneight"))

// replacingOccurrences 사용해보기

let test = "one4seveneight"
var answer = test.replacingOccurrences(of: "zero", with: "0")
           .replacingOccurrences(of: "one", with: "1")
           .replacingOccurrences(of: "two", with: "2")
           .replacingOccurrences(of: "three", with: "3")
           .replacingOccurrences(of: "four", with: "4")
           .replacingOccurrences(of: "five", with: "5")
           .replacingOccurrences(of: "six", with: "6")
           .replacingOccurrences(of: "seven", with: "7")
           .replacingOccurrences(of: "eight", with: "8")
           .replacingOccurrences(of: "nine", with: "9")
print(answer)


