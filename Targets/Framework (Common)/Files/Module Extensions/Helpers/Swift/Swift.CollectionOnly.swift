//
// Copyright (c) Vatsal Manot
//

import Swift

internal struct _CollectionOnly<C: Collection>
{
    typealias Value = C
    
    var value: Value
    
    @_transparent init(_ value: Value)
    {
        self.value = value
    }
}

extension _CollectionOnly: Sequence2
{
    typealias Iterator = Value.Iterator
    
    @_transparent func makeIterator() -> Iterator
    {
        return value.makeIterator()
    }
}

extension _CollectionOnly: Collection2
{
    typealias Index = Value.Index
    typealias IndexDistance = Value.IndexDistance
    
    @_transparent var startIndex: Index
    {
        return value.startIndex
    }
    
    @_transparent var endIndex: Index
    {
        return value.endIndex
    }
    
    subscript(index: Index) -> Iterator.Element
    {
        @_transparent get
        {
            return value[index]
        }
    }
    
    @_transparent func index(after index: Index) -> Index
    {
        return value.index(index, offsetBy: 1)
    }
}
