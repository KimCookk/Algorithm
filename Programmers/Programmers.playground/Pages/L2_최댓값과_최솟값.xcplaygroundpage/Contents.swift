func solution(_ s:String) -> String {
    let splitArray = s.split(separator: " ")
    
    var min = Int.max
    var max = Int.min
    
    splitArray.forEach{ item in
        guard let number = Int(item) else {
            return
        }
        
        if(min > number) {
            min = number
        }
        if ( max < number ) {
            max = number
        }
    }
    
    return "\(min) \(max)"
}

print(solution("-1 -2 -3 -4"))


