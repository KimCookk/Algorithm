import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    
    var scoreOfRank: [Int] = []
    var result: [Int] = []
    
    score.forEach{ score in
        scoreOfRank.append(score)
        scoreOfRank = scoreOfRank.sorted{ return $0 > $1 }
        
        if(scoreOfRank.count > k) {
            scoreOfRank.popLast()
        }
        //print(scoreOfRank)
        
        if let minimumScore = scoreOfRank.last {
            result.append(minimumScore)
        }
    }
    return result
}

solution(4, [0, 300, 40, 300, 20, 70, 150, 50, 500, 1000])
