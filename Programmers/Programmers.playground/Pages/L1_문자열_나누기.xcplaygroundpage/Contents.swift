import Foundation

// 왼쪽에서 오른쪽 문자를 읽어 x라 지칭
// x와 x가 아닌 다른 글자들의 횟수를 counting
// 처음으로 두 횟수 같아지는 순간 멈추고, 문자열 분리
// return 문자열 개수

func solution(_ s:String) -> Int {
    
    var count = 0
    
    var x: String = ""
    var xCount = 0
    var otherXCount = 0
    
    s.forEach{ char in
        let str = String(char)
        if(x.isEmpty) {
            x = str
            xCount += 1
        } else {
            if( x == str) {
                xCount += 1
            } else {
                otherXCount += 1
            }
        }
        
        if(xCount == otherXCount) {
            count += 1
            x = ""
            xCount = 0
            otherXCount = 0
        }
    }
    
    if(x.isEmpty == false) {
        count += 1
    }
    
    return count
}

solution("aaabbaccccabba")
