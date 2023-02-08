class StackWithMax {
    private var stack: [Int]
    private var maxStack: [Int]

    init() {
        stack = []
        maxStack = []
    }

    func push(_ element: Int) {
        stack.append(element)
        if let max = maxStack.last {
            maxStack.append(max > element ? max : element)
        } else {
            maxStack.append(element)
        }
    }

    func pop() {
        stack.popLast()
        maxStack.popLast()
    }

    func max() -> Int? {
        return maxStack.last
    }
}
