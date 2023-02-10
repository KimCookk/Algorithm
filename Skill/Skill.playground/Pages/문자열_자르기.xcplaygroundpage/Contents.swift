import Foundation

let testString = "0123456789"

// String.Index 활용
let startIndex = testString.startIndex
let endIndex = testString.endIndex
testString[startIndex..<endIndex]

let numberTwoIndex = testString.index(testString.startIndex, offsetBy: 2)
let numberThreeIndex = testString.index(testString.startIndex, offsetBy: 3)
testString[numberTwoIndex...numberThreeIndex]
testString[numberTwoIndex...]
testString[...numberThreeIndex]

type(of: testString[...numberThreeIndex])

// Array 활용
let arrayString = Array(testString)
String(arrayString[2...7])
String(arrayString[...7])
String(arrayString[2...])


// prefix , suffix
testString.prefix(7)
testString.prefix(56)

testString.suffix(3)
testString.suffix(100)

type(of: testString.suffix(3))
