protocol QueueProtocol {
    associatedtype Value
    
    func enqueue(value: Value)
    func dequeue() -> Value?
}
