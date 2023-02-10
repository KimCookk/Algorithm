import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result: Int = 0
    let pLength = p.count
    let tLength = t.count
    
    guard let pInt = Int(p) else {
        return result
    }
    
    let tArray = Array(t)
    let pNumber = Int(p)
    for startIndex in 0...tLength - pLength {
        if let tNumber = convertArrayToInt(tArray[startIndex..<startIndex+pLength]), let pNumber = pNumber {
            if(tNumber <= pNumber){
                result += 1
            }
        }
    }
    return result
}

func convertArrayToInt(_ array: ArraySlice<Character>) -> Int? {
    guard let result = Int(String(array)) else {
        return nil
    }
    return result
}

print(solution("500220839878","7"))
