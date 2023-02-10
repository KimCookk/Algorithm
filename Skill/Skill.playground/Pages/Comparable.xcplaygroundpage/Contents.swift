import Foundation

let tenInt: Int = 10
let fiveInt: Int = 5

print(fiveInt < tenInt)

class Person: Comparable {
    
    var age: Int
    var name: String
    
    init(_ name: String, _ age: Int) {
        self.name = name
        self.age = age
    }
    
    static func < (lhs: Person, rhs: Person) -> Bool {
        return lhs.age < rhs.age
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.age == rhs.age
    }
}

var kimPerson = Person("Kim", 20)
var leePerson = Person("Lee", 15)

print(kimPerson < leePerson)

struct Developer: Comparable {
    
    var name: String
    var developLanguage: String
    
    static func < (lhs: Developer, rhs: Developer) -> Bool {
        lhs.name < rhs.name
    }
}

var kimDeveloper = Developer(name: "Kim", developLanguage: "Python")
var leeDeveloper = Developer(name: "Lee", developLanguage: "Java")

print(kimDeveloper < leeDeveloper)


enum DevelopLangaugae: Int, Comparable {
    
    case swift = 1, java = 2, python = 3, cLaungage = 4
    
    var classRoom: String {
        switch self {
        case .swift:
            return "A"
        case .java:
            return "A"
        case .python:
            return "B"
        case .cLaungage:
            return "C"
        }
    }
    static func < (lhs: DevelopLangaugae, rhs: DevelopLangaugae) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
    
//    static func == (lhs: DevelopLangaugae, rhs: DevelopLangaugae) -> Bool {
//        return lhs.classRoom == rhs.classRoom
//    }
}

print(DevelopLangaugae.swift == DevelopLangaugae.java)
