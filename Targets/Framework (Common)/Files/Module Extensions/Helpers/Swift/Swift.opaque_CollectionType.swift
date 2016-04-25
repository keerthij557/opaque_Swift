//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias CollectionType2 = protocol<opaque_CollectionType, CollectionType>

public protocol opaque_CollectionType: opaque_Indexable, opaque_SequenceType
{
    var isEmpty: Bool { get }
    
    func underestimateCount() -> Int
    
    func toOpaque() -> AnySequence<(Any, Any)>
    
    func opaque_CollectionType_elements(within _: Any) -> opaque_SequenceType?

    func opaque_CollectionType_toAnyForwardCollection() -> Any
    func opaque_CollectionType_toAnyBidirectionalCollection() -> Any?
    func opaque_CollectionType_toAnyRandomAccessCollection() -> Any?
}

extension opaque_CollectionType where Self: CollectionType
{
    public func toOpaque() -> AnySequence<(Any, Any)>
    {
        return zip(startIndex..<endIndex, (startIndex..<endIndex).lazy.map({ self[$0] })).toOpaque()
    }
    
    public func opaque_CollectionType_elements(within indices: Any) -> opaque_SequenceType?
    {
        return ((indices as? opaque_SequenceType)?.opaque_SequenceType_toAnySequence() as? AnySequence<Index>)?.map({ self[$0] })
    }
    
    public func opaque_CollectionType_toAnyForwardCollection() -> Any
    {
        return AnyForwardCollection(self)
    }
    
    public func opaque_CollectionType_toAnyBidirectionalCollection() -> Any?
    {
        return AnyBidirectionalCollection(AnyForwardCollection(self))
    }

    public func opaque_CollectionType_toAnyRandomAccessCollection() -> Any?
    {
        return AnyRandomAccessCollection(AnyForwardCollection(self))
    }
}
