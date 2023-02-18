import Foundation
// baabaa
// b aa baa → bb aa → aa →
//


func solution(_ s:String) -> Int{
    var answer:Int = 0
    var stack: [String] = []
    
    s.forEach { char in
        let alphabet = String(char)
        
        if(stack.isEmpty == true) {
            stack.append(alphabet)
        } else {
            let peek = stack[stack.count-1]
            
            if(peek == alphabet) {
                stack.popLast()
            } else {
                stack.append(alphabet)
            }
        }
    
        
//        last 방식
//        if let peek = stack.last {
//            if(peek == alphabet) {
//                stack.popLast()
//            } else {
//                stack.append(alphabet)
//            }
//        } else {
//            stack.append(alphabet)
//        }
    }
    
    if(stack.isEmpty == true) {
        answer = 1
    }
    
    return answer
}




// [count-1]
//테스트 1 〉    통과 (206.25ms, 25.1MB)
//테스트 2 〉    통과 (167.51ms, 17.3MB)
//테스트 3 〉    통과 (176.85ms, 21MB)
//테스트 4 〉    통과 (177.03ms, 21MB)
//테스트 5 〉    통과 (178.12ms, 20.9MB)
//테스트 6 〉    통과 (167.07ms, 21.1MB)
//테스트 7 〉    통과 (176.54ms, 20.8MB)
//테스트 8 〉    통과 (178.27ms, 24.9MB)

// .last
//테스트 1 〉    통과 (289.37ms, 25.2MB)
//테스트 2 〉    통과 (224.05ms, 17.6MB)
//테스트 3 〉    통과 (290.78ms, 21MB)
//테스트 4 〉    통과 (289.27ms, 20.8MB)
//테스트 5 〉    통과 (286.54ms, 21MB)
//테스트 6 〉    통과 (288.91ms, 21.1MB)
//테스트 7 〉    통과 (272.86ms, 21MB)
//테스트 8 〉    통과 (289.86ms, 25.2MB)
