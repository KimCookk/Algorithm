import Foundation

func solution(_ arr:[Int]) -> Int {
   var result = 1
    var array = arr
    while(true) {
        array = array.filter{ element in element != 1}
        if(array.count == 0) {
            break
        }
        if let min = array.min(), min >= 2 {
            var dividor = 0
            for i in 2...min {
                array = array.map{ element in
                    if(element % i == 0) {
                        dividor = i
                        return element / i
                    } else {
                        return element
                    }
                }
                if(dividor != 0) {
                    result *= dividor
                     break
                }
            }
        }
    }
            
    return result
}




