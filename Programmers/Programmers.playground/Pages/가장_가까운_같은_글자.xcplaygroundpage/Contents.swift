import Foundation

func solution(_ s:String) -> [Int] {
    var indexDictionary: [String: Int] = [:]
    var result: [Int] = []
    
    Array(s).enumerated().forEach{ index , value in
        let key = String(value)
        if let dictionaryValue = indexDictionary[key] {
            result.append(index - dictionaryValue)
        } else {
            result.append(-1)
        }
        indexDictionary.updateValue(index, forKey: key)
    }
    
    return result
}


