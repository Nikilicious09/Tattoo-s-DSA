// Head first Insertion

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

struct LinkedList<T>: CustomStringConvertible {
    
    var tail: Node<T>?
    var head: Node<T>?
    
    mutating func push(value: T) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    var description: String {
        if head == nil {
            return "Empty Linked List"
        }
        return String(describing: head)
    }

}

var list = LinkedList<Int>()
list.push(value: 1)
list.push(value: 2)
list.push(value: 3)

print(list.description)
