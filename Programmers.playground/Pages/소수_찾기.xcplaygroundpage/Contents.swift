import Foundation

func solution(_ n:Int) -> Int {
   
    var arrayOfNumber: [Bool] = Array.init(repeating: true, count: n + 1)
    arrayOfNumber[0] = false
    arrayOfNumber[1] = false
    
    arrayOfNumber.enumerated().forEach{ index, value in
        if(value) {
            var count = 2
            while(index * count < arrayOfNumber.count) {
                arrayOfNumber[index * count] = false
                count += 1
            }
        }
    }
    
    
    let result = arrayOfNumber.filter{ item in
        return item == true
    }
    
    return result.count
}
