//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias MutableCollection2 = protocol<opaque_MutableCollection, MutableCollection>

public protocol opaque_MutableCollection: opaque_Collection, opaque_MutableIndexable
{
    mutating func opaque_MutableCollection_setElements(_: Any, within _: Any) -> Void?
}

extension opaque_MutableCollection where Self: MutableCollection, Self.SubSequence: opaque_Sequence
{    
    public mutating func opaque_MutableCollection_setElements(_ elements: Any, within indices: Any) -> Void?
    {
        if let indices = (indices as? opaque_Sequence)?.opaque_Sequence_toAnySequence() as? AnySequence<Index>, elements = (elements as? opaque_Sequence)?.opaque_Sequence_toAnySequence() as? AnySequence<Iterator.Element>
        {
            for (index, element) in Zip2Sequence(_sequence1: indices, _sequence2: elements)
            {
                self[index] = element
            }
        }
        
        return nil
    }
}
