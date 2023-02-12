import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let countOfZero = lottos.filter { item in
        item == 0
    }.count
    
    let lottosSet = Set(lottos)
    let winNumsSet = Set(win_nums)
    
    let winCount = lottosSet.intersection(winNumsSet).count
    
    var result: [Int] = []
    result.append(getScore(count: winCount + countOfZero))
    result.append(getScore(count: winCount))

    return result
}

func getScore(count: Int) -> Int {
    switch(count) {
    case 6:
        return 1
    case 5:
        return 2
    case 4:
        return 3
    case 3:
        return 4
    case 2:
        return 5
    default:
        return 6
    }
}

solution([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35])
