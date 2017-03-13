//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Collection2 = opaque_Collection & Collection

public protocol opaque_Collection: opaque_Sequence
{
    var isEmpty: Bool { get }
    
    func underestimateCount() -> Int

    
    static var opaque_Collection__Element: Any.Type { get }
    static var opaque_Collection_Index: Any.Type { get }
    
    var opaque_Collection_startIndex: Any { get }
    var opaque_Collection_endIndex: Any { get }
    
    var opaqueRepresentation: AnySequence<(Any, Any)> { get }

    func opaque_Collection_element(atPosition _: Any) -> Any?
    func opaque_Collection_elements(withinBounds _: Any) -> Any?
    
    func opaque_Collection_index(after i: Any) -> Any?
    func opaque_Collection_formIndex(after i: inout Any) -> Void?
    
    func opaque_Collection_toAnyCollection() -> Any
    func opaque_Collection_toAnyBidirectionalCollectionUsingFauxRandomAccessCollection() -> Any
    func opaque_Collection_toAnyRandomAccessCollectionUsingFauxRandomAccessCollection() -> Any
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
    
    public var opaque_Collection_startIndex: Any
    {
        return startIndex
    }
    
    public var opaque_Collection_endIndex: Any
    {
        return endIndex
    }
    
    public var opaqueRepresentation: AnySequence<(Any, Any)>
    {
        return zip(indices, CollectionOnly(self).indices.lazy.map({ self[$0] })).opaqueView
    }
    
    public func opaque_Collection_element(atPosition position: Any) -> Any?
    {
        return (-?>position).map({ self[$0 as Index] }).opaqueView
    }
    
    public func opaque_Collection_elements(withinBounds bounds: Any) -> Any?
    {
        return (-?>bounds).map({ self[$0 as Range<Index>] })
    }

    public func opaque_Collection_index(after i: Any) -> Any?
    {
        return opaque(index(after:))(i)
    }
    
    public func opaque_Collection_formIndex(after i: inout Any) -> Void?
    {
        return opaque(formIndex)(&i)
    }

    public func opaque_Collection_toAnyCollection() -> Any
    {
        return AnyCollection(fauxRandomAccessView)
    }
    
    public func opaque_Collection_toAnyBidirectionalCollectionUsingFauxRandomAccessCollection() -> Any
    {
        return AnyBidirectionalCollection(fauxRandomAccessView)
    }
    
    public func opaque_Collection_toAnyRandomAccessCollectionUsingFauxRandomAccessCollection() -> Any
    {
        return AnyRandomAccessCollection(fauxRandomAccessView)
    }
}
