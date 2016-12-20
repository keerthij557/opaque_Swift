//
// Copyright (c) Vatsal Manot
//

import Swift

public struct IteratorOnly<T: IteratorProtocol>
{
    public typealias Value = T
    
    public fileprivate(set) var value: Value
    
    public init(_ value: Value)
    {
        self.value = value
    }
}

extension IteratorOnly: IteratorProtocol2
{
    public mutating func next() -> Value.Element?
    {
        return value.next()
    }
}

extension IteratorProtocol
{
    public var iteratorOnly: IteratorOnly<Self>
    {
        return .init(self)
    }
}
