//: [Previous](@previous)

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var lostArray = Array(Set(lost).subtracting(Set(reserve))).sorted()
    var reserveArray = Array(Set(reserve).subtracting(Set(lost))).sorted()
    var lostNumber = lostArray.count

    
    lostArray.forEach{ element in
        if(reserveArray.contains(element - 1)) {
            lostNumber = lostNumber - 1
            reserveArray = reserveArray.filter { $0 != element - 1 }
        } else if (reserveArray.contains(element + 1)) {
            lostNumber = lostNumber - 1
            reserveArray = reserveArray.filter { $0 != element + 1 }
        }
    }

    return n - lostNumber
}

//: [Next](@next)
print(solution( 5, [1, 3], [2, 4]))
