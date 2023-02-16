// JadenCase 첫 문자가 대문자 그외 소문자
// 첫문자가 알파벳이 아닌 경우 제외
import Foundation

func solution(_ s:String) -> String {
    var stringArray = Array(s.lowercased()).map{ item in
        return String(item)
    }
    
    stringArray.enumerated().forEach{ index , item in
        if(index == 0) {
            stringArray[index] = item.uppercased()
        }
        
        if(item == " ") {
            if(index + 1 < stringArray.count) {
                stringArray[index + 1] = stringArray[index + 1].uppercased()
            }
        }
    }
    
    return stringArray.joined(separator: "")
}

solution("3people unFollowed me")
