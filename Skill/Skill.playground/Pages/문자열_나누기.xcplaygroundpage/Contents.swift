import Foundation

var testString = "Hello11World121113"

let resultSplit = testString.split(separator: "1")
type(of: resultSplit)

let resultCompoents = testString.components(separatedBy: "1")
type(of: resultCompoents)

var calculateString = "1+24*12-5/4"
let components = calculateString.components(separatedBy: ["+", "-", "*" , "/"])


