// a^b using recursion

func power(a: Int, b: Int) -> Int {
    if b == 0 {
        return 1
    }
    else if b % 2 == 0 {
        let result = power(a: a, b: b/2)
        return result * result
    } else {
        return a * power(a: a, b: b - 1)
    }
}

print(power(a: 4, b: 8))
