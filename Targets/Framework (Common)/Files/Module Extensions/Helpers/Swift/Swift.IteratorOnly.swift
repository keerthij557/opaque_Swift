//
// Copyright (c) Vatsal Manot
//

import Swift

public struct IteratorOnly<T: IteratorProtocol>
{
    public typealias Value = T
    
    public fileprivate(set) var value: Value
    
    @_transparent public init(_ value: Value)
    {
        self.value = value
    }
}

// MARK: - Protocol Implementations -

extension IteratorOnly: IteratorProtocol2
{
    @_transparent public mutating func next() -> Value.Element?
    {
        return value.next()
    }
}

// MARK: - Helpers - 

extension IteratorProtocol
{
    @_transparent public var iteratorOnly: IteratorOnly<Self>
    {
        return .init(self)
    }
}
