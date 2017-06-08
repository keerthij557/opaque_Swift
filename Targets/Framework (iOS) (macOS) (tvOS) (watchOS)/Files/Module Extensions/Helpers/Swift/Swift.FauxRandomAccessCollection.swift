//
// Copyright (c) Vatsal Manot
//

import Swift

public struct FauxRandomAccessCollection<C: Collection>
{
    public typealias Value = C
    
    public var value: Value
    
    @_transparent public init(_ value: Value)
    {
        self.value = value
    }
}

// MARK: - Protocol Implementation -

extension FauxRandomAccessCollection: RandomAccessCollection2
{
    public typealias Index = FauxRandomAccessIndex<Value>
    public typealias IndexDistance = Index.Stride
    public typealias Indices = DefaultRandomAccessIndices<FauxRandomAccessCollection>
    
    @_transparent public var startIndex: Index
    {
        return .init(value, value.startIndex)
    }
    
    @_transparent public var endIndex: Index
    {
        return .init(value, value.endIndex)
    }
    
    @_transparent public var indices: Indices
    {
        return -*>(_elements: self, startIndex: startIndex, endIndex: endIndex) // fragile
    }
    
    public subscript(index: Index) -> Iterator.Element
    {
        @_transparent get
        {
            return value[index.value]
        }
    }
    
    @_transparent public func distance(from start: Index, to end: Index) -> Index.Stride
    {
        return start.distance(to: end)
    }

    @_transparent public func index(after index: Index) -> Index
    {
        return index.advanced(by: 1)
    }
    
    @_transparent public func index(before index: Index) -> Index
    {
        return index.advanced(by: -1)
    }
}

extension FauxRandomAccessCollection: Sequence2
{
    public typealias Iterator = Value.Iterator
    
    @_transparent public func makeIterator() -> Iterator
    {
        return value.makeIterator()
    }
}

// MARK: - Helpers - 

extension Collection
{
    public var fauxRandomAccessView: FauxRandomAccessCollection<Self>
    {
        get
        {
            return .init(self)
        }
        
        set
        {
            self = newValue.value
        }
    }
}
