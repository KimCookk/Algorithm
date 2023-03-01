import Foundation
// 논문 n편중, h번 이상 인용된 논문이 h편이고, 나머지 논문이 h 번 이하 인용되었다면, h의 최댓값이 H-Index
func solution(_ citations:[Int]) -> Int {
    let hNumber = citations.count
    var hIndex = 0
    
    for h in stride(from: hNumber, through: 1, by: -1) {
        print(h)
        if(h <= citations.filter{ citation in
            return citation >= h
        }.count) {
            hIndex = h
            break
        }
    }
    
    return hIndex
}
