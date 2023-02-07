// Create three Node

class Node<T>: CustomStringConvertible {
    var value: T
    var next: Node?
    
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
    var description: String {
        return "\(value) -> \(next)"
    }
    
}

let nodeOne = Node(value: Int(0))
let nodeTwo = Node(value: Int(1))
let nodeThree = Node(value: Int(2), next: nil)
nodeOne.next = nodeTwo
nodeTwo.next = nodeThree

print("LL : ", nodeOne.description)
