import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{ front, back in
        return sortByRule(front, back, n)
    }
}

func sortByRule(_ firstString: String, _ secondsString: String, _ index: Int) -> Bool {
    let firstIndexString = String(Array(firstString)[index])
    let secondsIndexString = String(Array(secondsString)[index])
    
    if(firstIndexString == secondsIndexString) {
        return firstString < secondsString
    }
    else {
        return firstIndexString < secondsIndexString
    }
}

solution(["abce", "abcd", "cdx"], 2)
