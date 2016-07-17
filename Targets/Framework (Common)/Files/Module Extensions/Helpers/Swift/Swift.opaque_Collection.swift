//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Collection2 = protocol<opaque_Collection, Collection>

public protocol opaque_Collection: opaque_IndexableBase, opaque_Sequence
{
    var isEmpty: Bool { get }
    
    func underestimateCount() -> Int
    func toOpaque() -> AnySequence<(Any, Any)>
    
    func opaque_Collection_elements(within: Any) -> opaque_Sequence?
    func opaque_Collection_toAnyCollection() -> Any
    func opaque_Collection_toAnyBidirectionalCollection() -> Any?
    func opaque_Collection_toAnyRandomAccessCollection() -> Any?
}

extension opaque_Collection where Self: Collection, Self.Indices.Iterator.Element == Self.Index
{
    public func toOpaque() -> AnySequence<(Any, Any)>
    {
        return zip(indices, indices.lazy.map({ self[$0] })).toOpaque()
    }
    
    public func opaque_Collection_elements(within indices: Any) -> opaque_Sequence?
    {
        return ((indices as? opaque_Sequence)?.opaque_Sequence_toAnySequence() as? AnySequence<Index>)?.map({ self[$0] })
    }
}

extension opaque_Collection where Self: Collection, Self.Iterator.Element == Self._Element, Self.SubSequence: Collection, Self.SubSequence.Iterator.Element == Self._Element, Self.SubSequence.Index == Self.Index, Self.SubSequence.Indices: Collection, Self.SubSequence.Indices.Iterator.Element == Self.Index, Self.SubSequence.Indices.Index == Self.Index, Self.SubSequence.Indices.SubSequence == Self.SubSequence.Indices, Self.SubSequence.SubSequence == Self.SubSequence, Self.Indices: Collection, Self.Indices.Iterator.Element == Self.Index, Self.Indices.Index == Self.Index, Self.Indices.SubSequence == Self.Indices
{
    public func opaque_Collection_toAnyCollection() -> Any
    {
        return AnyCollection(self)
    }
    
    public func opaque_Collection_toAnyBidirectionalCollection() -> Any?
    {
        return AnyBidirectionalCollection(.init(self))
    }
    
    public func opaque_Collection_toAnyRandomAccessCollection() -> Any?
    {
        return AnyRandomAccessCollection(.init(self))
    }
}
