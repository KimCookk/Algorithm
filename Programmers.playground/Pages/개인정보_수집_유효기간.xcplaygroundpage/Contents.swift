import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var result: [Int] = []
    let termsDictionary = convertToDictionary(terms)
    
    let todayDate = DateStruct(today)
    
    privacies.enumerated().forEach{ index, privacieStr in
        let splitArray = privacieStr.split(separator: " ")
        let dateOfPrivacie = DateStruct(String(splitArray[0]))
        let typeOfPrivacie = String(splitArray[1])
        
        let expireDate = dateOfPrivacie.addMonth(termsDictionary[typeOfPrivacie]!)
        print(expireDate)
        if(todayDate.compareTo(otherDate: expireDate) < 0) {
            result.append(index+1)
        }
    
    }
    
    return result
}

struct DateStruct {
    static let maxMonth = 12
    static let maxDay = 28
    
    var year: String
    var month: String
    var day: String
    
    init(_ dateString: String) {
        let splitArray = dateString.split(separator: ".")
        
        self.year = String(splitArray[0])
        self.month = String(splitArray[1])
        self.day = String(splitArray[2])
    }
    
    init(year: String, month: String, day: String) {
        self.year = year
        self.month = month
        self.day = day
    }
    
    func compareTo(otherDate: DateStruct) -> Int {
        let year = Int(self.year)!
        let otherYear = Int(otherDate.year)!
        
        if(year != otherYear) {
            if(year > otherYear) {
                return -1
            } else {
                return 1
            }
        } else {
            let month = Int(self.month)!
            let otherMonth = Int(otherDate.month)!
            if(month != otherMonth) {
                if(month > otherMonth) {
                    return -1
                } else {
                    return 1
                }
            } else {
                let day = Int(self.day)!
                let otherDay = Int(otherDate.day)!
                if(day != otherDay) {
                    if(day > otherDay) {
                        return -1
                    } else {
                        return 1
                    }
                } else {
                    return 0
                }
            }
        }
    }
    
    func addMonth(_ addMonthNumber: Int) -> DateStruct {
        let yearOfInt = Int(self.year)!
        let monthOfInt = Int(self.month)!
        let dayOfInt = Int(self.day)!
        
        var sumMonth = monthOfInt + addMonthNumber
        var sumDay = dayOfInt - 1
        if sumDay == 0 {
            sumMonth -= 1
            if(sumMonth > DateStruct.maxMonth) {
                print(sumMonth)
                let resultYear = yearOfInt + ( sumMonth / 12 )
                var resultMonth = sumMonth % 12
                if(resultMonth == 0) {
                    resultMonth = 12
                }
                return DateStruct(year: "\(resultYear)", month: "\(resultMonth)", day: "28")
            } else {
                if(sumMonth - 1 == 0) {
                    return DateStruct(year: "\(yearOfInt)", month: "\(12)", day: "28")
                } else {
                    return DateStruct(year: "\(yearOfInt)", month: "\(sumMonth)", day: "28")
                }
            }
        } else {
            if(sumMonth > DateStruct.maxMonth) {
                let resultYear = yearOfInt + ( sumMonth / 12 )
                var resultMonth = sumMonth % 12
                if(resultMonth == 0) {
                    resultMonth = 12
                }
                return DateStruct(year: "\(resultYear)", month: "\(resultMonth)", day: "\(sumDay)")
            } else {
                return DateStruct(year: "\(yearOfInt)", month: "\(sumMonth)", day: "\(sumDay)")
            }
        }
    }
}

func convertToDictionary(_ terms: [String]) -> Dictionary<String, Int> {
    var dictionary: Dictionary<String, Int> = [:]
    
    terms.forEach { term in
        let splitArray = term.split(separator: " ")
        
        let privateType = String(splitArray[0])
        let endOfMonth = Int(splitArray[1])!
        
        dictionary.updateValue(endOfMonth, forKey: privateType)
    }
    
    return dictionary
}

solution("2022.05.28", ["B 1"], ["2020.12.1 B"])
