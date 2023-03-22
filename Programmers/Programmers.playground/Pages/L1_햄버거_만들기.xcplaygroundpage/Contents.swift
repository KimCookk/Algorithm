import Foundation
// 빵 - 야채 - 고기 - 빵
// 1 : 빵 , 2 : 야채 , 3 : 고기
// 1231
func solution(_ ingredient:[Int]) -> Int {

    let hamburger = "1231"
    
    var count = 0

    var ingredientString = ingredient.reduce("", { preResult, element in
        var result = preResult + String(element)
        if(result.contains(hamburger)) {
            
            result.removeLast()
            result.removeLast()
            result.removeLast()
            result.removeLast()
            
            count += 1
        }
        return result
    })

   

    return count
}

solution([2, 1, 1, 2, 3, 1, 2, 3, 1])
