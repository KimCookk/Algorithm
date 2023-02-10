import Foundation

//1번 수포자가 찍는 방식: 1, 2, 3, 4, 5
//2번 수포자가 찍는 방식: 2, 1, 2, 3, 2, 4, 2, 5
//3번 수포자가 찍는 방식: 3, 3, 1, 1, 2, 2, 4, 4, 5, 5

func firstPick(problemIndex: Int, answer: Int) -> Bool {
    var pickAnswer = 0
    pickAnswer = ( problemIndex + 1 ) % 5
    if(pickAnswer == 0) {
        pickAnswer = 5
    }
    
    return pickAnswer == answer
}

func firstPickNumber(problemIndex: Int) -> Int {
    var pickAnswer = 0
    pickAnswer = ( problemIndex + 1 ) % 6
    
    return pickAnswer
}

func secondsPick(problemIndex: Int, answer: Int) -> Bool {
    var pickAnswer = 0
    
    if((problemIndex + 1) % 2 == 1) {
        pickAnswer = 2
    } else {
        if ((problemIndex + 1) % 8 == 2) {
            pickAnswer = 1
        } else if ((problemIndex + 1) % 8 == 4) {
            pickAnswer = 3
        } else if ((problemIndex + 1) % 8 == 6) {
            pickAnswer = 4
        } else if ((problemIndex + 1) % 8 == 0) {
            pickAnswer = 5
        }
    }
    
    return pickAnswer == answer
}

func secondsPickNumber(problemIndex: Int) -> Int {
    var pickAnswer = 0
    
    if((problemIndex + 1) % 2 == 1) {
        pickAnswer = 2
    } else {
        if ((problemIndex + 1) % 8 == 2) {
            pickAnswer = 1
        } else if ((problemIndex + 1) % 8 == 4) {
            pickAnswer = 3
        } else if ((problemIndex + 1) % 8 == 6) {
            pickAnswer = 4
        } else if ((problemIndex + 1) % 8 == 0) {
            pickAnswer = 5
        }
    }
    
    return pickAnswer
}

func thirdPick(problemIndex: Int, answer: Int) -> Bool {
    var pickAnswer = 0
    
    if((problemIndex + 1) % 10 == 1 || (problemIndex + 1) % 10 == 2) {
        pickAnswer = 3
    } else if((problemIndex + 1) % 10 == 3 || (problemIndex + 1) % 10 == 4) {
        pickAnswer = 1
    } else if((problemIndex + 1) % 10 == 5 || (problemIndex + 1) % 10 == 6) {
        pickAnswer = 2
    } else if((problemIndex + 1) % 10 == 7 || (problemIndex + 1) % 10 == 8) {
        pickAnswer = 4
    } else if((problemIndex + 1) % 10 == 9 || (problemIndex + 1) % 10 == 0) {
        pickAnswer = 5
    }
    return pickAnswer == answer
}

func thirdPickNumber(problemIndex: Int) -> Int {
    var pickAnswer = 0
    
    if((problemIndex + 1) % 10 == 1 || (problemIndex + 1) % 10 == 2) {
        pickAnswer = 3
    } else if((problemIndex + 1) % 10 == 3 || (problemIndex + 1) % 10 == 4) {
        pickAnswer = 1
    } else if((problemIndex + 1) % 10 == 5 || (problemIndex + 1) % 10 == 6) {
        pickAnswer = 2
    } else if((problemIndex + 1) % 10 == 7 || (problemIndex + 1) % 10 == 8) {
        pickAnswer = 4
    } else if((problemIndex + 1) % 10 == 9 || (problemIndex + 1) % 10 == 0) {
        pickAnswer = 5
    }
    return pickAnswer
}

func solution(_ answers:[Int]) -> [Int] {
    var result: [Int] = []
    
    var firstAnswerCount = 0
    var secondsAnswerCount = 0
    var thirdAnswerCount = 0
    answers.enumerated().forEach{ (index, number) in
        if(firstPick(problemIndex: index, answer: number)) {
            firstAnswerCount += 1
        }
        if(secondsPick(problemIndex: index, answer: number)) {
            secondsAnswerCount += 1
        }
        if(thirdPick(problemIndex: index, answer: number)) {
            thirdAnswerCount += 1
        }
    }

    var maxCount = max(firstAnswerCount, secondsAnswerCount, thirdAnswerCount)

    if(maxCount != 0) {
        if(maxCount == firstAnswerCount) {
            result.append(1)
        }

        if(maxCount == secondsAnswerCount) {
            result.append(2)
        }

        if(maxCount == thirdAnswerCount) {
            result.append(3)
        }
    }
    
    return result
}
//
//var first:[Int] = []
//var seconds:[Int] = []
//var third:[Int] = []
//
//for indexNumber in 0...1000 {
//    first.append(firstPickNumber(problemIndex: indexNumber))
//    seconds.append(secondsPickNumber(problemIndex: indexNumber))
//    third.append(thirdPickNumber(problemIndex: indexNumber))
//}
//
//print(first)
//print(seconds)
//print(third)
