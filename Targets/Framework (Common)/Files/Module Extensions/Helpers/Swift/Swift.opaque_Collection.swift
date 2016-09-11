//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Collection2 = opaque_Collection & Collection

public protocol opaque_Collection: opaque_Sequence
{
    static var opaque_Collection__Element: Any.Type { get }
    static var opaque_Collection_Index: Any.Type { get }
    
    var opaque_Collection_startIndex: opaque_Comparable { get }
    var opaque_Collection_endIndex: opaque_Comparable { get }
    
    func opaque_Collection_elementAtPosition(_ position: Any) -> Any?
    func opaque_Collection_elementsWithinBounds(_ bounds: Any) -> opaque_Sequence?
    
    func opaque_Collection_index(after i: opaque_Comparable) -> opaque_Comparable?
    func opaque_Collection_formIndex(after i: inout opaque_Comparable) -> Void?

    var isEmpty: Bool { get }
    
    func underestimateCount() -> Int
    func toOpaque() -> AnySequence<(Any, Any)>
    
    func opaque_Collection_elements(within: Any) -> opaque_Sequence?
    func opaque_Collection_toAnyCollection() -> Any
    func opaque_Collection_toAnyBidirectionalCollection() -> Any?
    func opaque_Collection_toAnyRandomAccessCollection() -> Any?
}

extension opaque_Collection where Self: Collection
{
    public static var opaque_Collection__Element: Any.Type
    {
        return _Element.self
    }
    
    public static var opaque_Collection_Index: Any.Type
    {
        return Index.self
    }
    
    public func opaque_Collection_elementAtPosition(_ position: Any) -> Any?
    {
        return (-?>position).map({ self[$0] }).toOpaque()
    }
}

extension opaque_Collection where Self: Collection, Self.Index: opaque_Comparable
{
    public var opaque_Collection_startIndex: opaque_Comparable
    {
        return startIndex
    }
    
    public var opaque_Collection_endIndex: opaque_Comparable
    {
        return endIndex
    }
    
    public func opaque_Collection_index(after i: opaque_Comparable) -> opaque_Comparable?
    {
        return (-?>i).map(index)
    }
    
    public func opaque_Collection_formIndex(after i: inout opaque_Comparable) -> Void?
    {
        guard var _i = i as? Index else
        {
            return nil
        }
        
        formIndex(after: &_i)
        
        i = _i
        
        return ()
    }
}

extension opaque_Collection where Self: Collection, Self.SubSequence: opaque_Sequence
{
    public func opaque_Collection_elementsWithinBounds(_ bounds: Any) -> opaque_Sequence?
    {
        return (-?>bounds).map({ self[$0] })
    }
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
