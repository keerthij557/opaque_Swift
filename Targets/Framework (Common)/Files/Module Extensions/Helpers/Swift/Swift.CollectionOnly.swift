//
// Copyright (c) Vatsal Manot
//

import Swift

internal struct CollectionOnly<C: Collection>
{
    typealias Value = C
    
    var value: Value
    
    init(_ value: Value)
    {
        self.value = value
    }
}

extension CollectionOnly: Sequence2
{
    typealias Iterator = Value.Iterator
    
    func makeIterator() -> Iterator
    {
        return value.makeIterator()
    }
}

extension CollectionOnly: Collection2
{
    typealias Index = Value.Index
    typealias IndexDistance = Value.IndexDistance
    
    var startIndex: Index
    {
        return value.startIndex
    }
    
    var endIndex: Index
    {
        return value.endIndex
    }
    
    subscript(index: Index) -> Iterator.Element
    {
        return value[index]
    }
    
    func index(after index: Index) -> Index
    {
        return value.index(index, offsetBy: 1)
    }
}
