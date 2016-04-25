//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias MutableCollectionType2 = protocol<opaque_MutableCollectionType, MutableCollectionType>

public protocol opaque_MutableCollectionType: opaque_CollectionType, opaque_MutableIndexable
{
    mutating func opaque_MutableCollectionType_setElements(_: Any, within _: Any) -> Void?
}

extension opaque_MutableCollectionType where Self: MutableCollectionType, Self.SubSequence: opaque_SequenceType
{    
    public mutating func opaque_MutableCollectionType_setElements(elements: Any, within indices: Any) -> Void?
    {
        if let indices = (indices as? opaque_SequenceType)?.opaque_SequenceType_toAnySequence() as? AnySequence<Index>, elements = (elements as? opaque_SequenceType)?.opaque_SequenceType_toAnySequence() as? AnySequence<Generator.Element>
        {
            for (index, element) in Zip2Sequence(indices, elements)
            {
                self[index] = element
            }
        }
        
        return nil
    }
}
