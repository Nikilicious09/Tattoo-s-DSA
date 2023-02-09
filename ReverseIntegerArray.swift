func reverseIntegerArray(input: inout [Int]) -> [Int] {
    let count = input.count
    
    for i in (0..<count/2) {
        let temp = input[i]
        input[i] = input[count - i - 1]
        input[count - i - 1] = temp
    }
    
    return input
}

// 1 2 3 -> 3 2 1

var input = [1,2,3,4]
print(reverseIntegerArray(input: &input))
