//
// Copyright (c) Vatsal Manot
//

import Swift

public struct CollectionOnly<C: Collection>
{
    public typealias Value = C
    
    public let value: Value
    
    @_transparent init(_ value: Value)
    {
        self.value = value
    }
}

extension CollectionOnly: Sequence2
{
    public typealias Iterator = Value.Iterator
    
    @_transparent public func makeIterator() -> Iterator
    {
        return value.makeIterator()
    }
}

extension CollectionOnly: Collection2
{
    public typealias Index = Value.Index
    public typealias IndexDistance = Value.IndexDistance
    
    @_transparent public var startIndex: Index
    {
        return value.startIndex
    }
    
    @_transparent public var endIndex: Index
    {
        return value.endIndex
    }
    
    public subscript(index: Index) -> Iterator.Element
    {
        @_transparent get
        {
            return value[index]
        }
    }
    
    @_transparent public func index(after index: Index) -> Index
    {
        return value.index(index, offsetBy: 1)
    }
}

// MARK: - Helpers -

extension Collection
{
    public var collectionOnly: CollectionOnly<Self>
    {
        return .init(self)
    }
}
