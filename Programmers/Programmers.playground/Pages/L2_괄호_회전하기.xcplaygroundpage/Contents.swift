import Foundation

class BuckeChecker {
    
    var bucketDictionary: [Character: Int] = ["[": 0, "{": 0, "(": 0]
    var isBucket: Bool = true
    
    func initBucketChecker() {
        bucketDictionary = ["[": 0, "{": 0, "(": 0]
        isBucket = true
    }
    
    func inputBucket(_ bucket: Character) -> Bool {
        if let bucketValue = bucketDictionary[bucketKey(bucket)] {
            if(bucket == "[" || bucket == "{" || bucket == "(") {
                bucketDictionary[bucketKey(bucket)] = bucketValue + 1
                return true
            } else {
                if(bucketValue == 0) {
                    isBucket = false
                    return isBucket
                } else {
                    bucketDictionary[bucketKey(bucket)] = bucketValue - 1
                    return true
                }
            }
        }
        return false
    }
    
    func getIsBucket() -> Bool {
        if(isBucket == true ) {
            if(bucketDictionary.values.reduce(0, +) == 0) {
                return true
            }
            return false
        }
        return false
    }
    
    func bucketKey(_ bucket: Character) -> Character {
        if(bucket == "[" || bucket == "{" || bucket == "(") {
            return bucket
        } else {
            if(bucket == "]") {
                return "["
            } else if(bucket == "}") {
                return "{"
            } else {
                return "("
            }
        }
    }
    
}

func solution(_ s:String) -> Int {

    let sArray = Array(s)
    var stack: [Character] = []
    let length = s.count
    var bucketChecker = BuckeChecker()
    
    var result = 0
    
    for startIndex in 0..<length {
        for plus in 0..<length {
            let index = (startIndex + plus) % length
            let bucket = sArray[index]
            if bucketChecker.inputBucket(bucket) == false {
                break
            }
        }
        if(bucketChecker.getIsBucket() == true) {
            result += 1
        }
        bucketChecker.initBucketChecker()
    }

    return result
}


solution("([{)}]")

