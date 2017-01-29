//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Collection2 = opaque_Collection & Collection

public protocol opaque_Collection: opaque_Sequence
{
    static var opaque_Collection__Element: Any.Type { get }
    static var opaque_Collection_Index: Any.Type { get }
    
    var opaque_Collection_startIndex: Any { get }
    var opaque_Collection_endIndex: Any { get }
    
    func opaque_Collection_element(atPosition _: Any) -> Any?
    func opaque_Collection_elements(withinBounds _: Any) -> Any?
    
    func opaque_Collection_index(after i: Any) -> Any?
    func opaque_Collection_formIndex(after i: inout Any) -> Void?

    var isEmpty: Bool { get }
    
    func underestimateCount() -> Int
    func toOpaque() -> AnySequence<(Any, Any)>
    
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
    
    public var opaque_Collection_startIndex: Any
    {
        return startIndex
    }
    
    public var opaque_Collection_endIndex: Any
    {
        return endIndex
    }
    
    public func opaque_Collection_element(atPosition position: Any) -> Any?
    {
        return (-?>position).map({ self[$0 as Index] }).toOpaque()
    }
    
    public func opaque_Collection_elements(withinBounds bounds: Any) -> Any?
    {
        return (-?>bounds).map({ self[$0 as Range<Index>] })
    }

    public func opaque_Collection_index(after i: Any) -> Any?
    {
        return (-?>i).map(index(after:))
    }
    
    public func opaque_Collection_formIndex(after i: inout Any) -> Void?
    {
        guard var _i = i as? Index else
        {
            return nil
        }
        
        formIndex(after: &_i)
        
        i = _i
        
        return ()
    }

    public func toOpaque() -> AnySequence<(Any, Any)>
    {
        return zip(indices, CollectionOnly(self).indices.lazy.map({ self[$0] })).toOpaque()
    }
    
    public func opaque_Collection_toAnyCollection() -> Any
    {
        return AnyCollection(CollectionOnly(self))
    }
    
    public func opaque_Collection_toAnyBidirectionalCollection() -> Any?
    {
        return AnyBidirectionalCollection(AnyCollection(CollectionOnly(self)))
    }
    
    public func opaque_Collection_toAnyRandomAccessCollection() -> Any?
    {
        return AnyRandomAccessCollection(AnyCollection(CollectionOnly(self)))
    }
}
