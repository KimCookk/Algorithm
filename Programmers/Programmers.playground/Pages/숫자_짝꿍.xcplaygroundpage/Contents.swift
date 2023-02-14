import Foundation

func solution(_ X:String, _ Y:String) -> String {
    
    var xNumberArray: [Int?] = Array.init(repeating: nil, count: 10)
    var yNumberArray: [Int?] = Array.init(repeating: nil, count: 10)
    var resultArray: [Int] = Array.init(repeating: 0, count: 10)
    
    X.forEach{ xChar in
        if let xNumber = Int(String(xChar)) {
            if let count = xNumberArray[xNumber] {
                xNumberArray[xNumber] = count + 1
            } else {
                xNumberArray[xNumber] = 1
            }
        }
    }
    
    Y.forEach{ yChar in
        if let yNumber = Int(String(yChar)) {
            if let count = yNumberArray[yNumber] {
                yNumberArray[yNumber] = count + 1
            } else {
                yNumberArray[yNumber] = 1
            }
        }
    }
    
    for i in 0...9 {
        if let xNumberCount = xNumberArray[i], let yNumberCount = yNumberArray[i] {
            if(xNumberCount > yNumberCount) {
                resultArray[i] = yNumberCount
            } else {
                resultArray[i] = xNumberCount
            }
        }
    }
    
    var result = resultArray.enumerated().reversed().reduce("", { result, newItem in
        return result + String.init(repeating: String(newItem.offset), count: newItem.element)
    })
    
    if(result.isEmpty) {
        result = "-1"
    }
    if let resultNumber = Int(result) {
        if(resultNumber == 0) {
            result = "0"
        }
    }
    
    return result
}

solution("12321", "42531")

