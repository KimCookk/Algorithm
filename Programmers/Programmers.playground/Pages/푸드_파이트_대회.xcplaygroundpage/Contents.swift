import Foundation

func solution(_ food:[Int]) -> String {
    
    var front: String = ""
    var back: String = ""
    
    for i in 1..<food.count {
        let quotient = food[i] / 2
        if(quotient > 0) {
            for j in 1...quotient {
                front += "\(i)"
                back = "\(i)" + back
            }
        }
    }
    

    return "\(front)0\(back)"
}

solution([1, 7, 1, 2])
