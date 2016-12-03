//
// Copyright (c) Vatsal Manot
//

import Swift

public struct IteratorOnly<T: IteratorProtocol>: IteratorProtocol2
{
    public typealias Value = T
    
    public private(set) var value: Value
    
    public init(_ value: Value)
    {
        self.value = value
    }
    
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
