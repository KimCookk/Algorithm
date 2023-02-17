import Foundation

// O(1)

func isFirstZero(_ intArray: [Int]) -> Bool {
    
    return intArray[0] == 0 ? true : false
}

isFirstZero([0,2])

// O(n)

func printArray(_ number: Int) {
    for i in 1...number {
        print(i)
    }
}

printArray(2)

// O(n^2)
func printSquare(_ number: Int) {
    for i in 1...number {
        var line = ""
        for j in 1...number {
            line += "\(i * j) "
        }
        print(line)
    }
}

printSquare(4)

func printSquare(_ width: Int, _ height: Int) {
    for i in 1...height {
        var line = ""
        for j in 1...width {
            line += "\(i * j) "
        }
        print(line)
    }
}

printSquare(4, 2)

func getFibonacciNumber(_ index: Int) -> Int {
    if(index == 1) {
        return 1
    }
    if(index == 0) {
        return 0
    }
    
    return getFibonacciNumber(index - 2) + getFibonacciNumber(index - 1)
}

getFibonacciNumber(5)

func binarySearchArray(_ number: Int, _ array: [Int], _ min: Int, _ max: Int) -> Int? {
    
    if(min > max) {
        return nil
    }
    var index = min + max / 2
    
    if(array[index] == number) {
        return index
    } else if (number < array[index]) {
        return binarySearchArray(number, array, min, index)
    } else {
        return binarySearchArray(number, array, index, max)
    }
}

print(binarySearchArray(1 , [1,2,3,4], 0, 3))
