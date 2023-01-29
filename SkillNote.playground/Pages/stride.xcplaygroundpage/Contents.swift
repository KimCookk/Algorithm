//: [Previous](@previous)
import Foundation

// stride
// 일정한 간격의 수가 필요한 경우
stride(from: 0, to: 12, by: 3).forEach{ number in
    print(number)
}

stride(from: 0, through: 12, by: 3).forEach{ number in
    print(number)
}

for radians in stride(from: 0.0, to: .pi * 2, by: .pi / 2) {
    let degrees = Int(radians * 180 / .pi)
    print("Degrees: \(degrees), radians: \(radians)")
}


//: [Next](@next)
