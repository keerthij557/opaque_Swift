//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Indexable2 = protocol<opaque_Indexable, Indexable>

public protocol opaque_Indexable
{
    static var opaque_Indexable__Element: Any.Type { get }
    static var opaque_Indexable_Index: Any.Type { get }

    var opaque_Indexable_startIndex: opaque_ForwardIndexType { get }
    var opaque_Indexable_endIndex: opaque_ForwardIndexType { get }
    
    func opaque_Indexable_elementAtPosition(_: Any) -> Any?
    func opaque_Indexable_elementAtPosition(_: opaque_ForwardIndexType) -> Any
}

extension opaque_Indexable where Self: Indexable
{
    public static var opaque_Indexable__Element: Any.Type
    {
        return _Element.self
    }
    
    public static var opaque_Indexable_Index: Any.Type
    {
        return Index.self
    }
    
    public var opaque_Indexable_startIndex: opaque_ForwardIndexType
    {
        return startIndex as! opaque_ForwardIndexType
    }
    
    public var opaque_Indexable_endIndex: opaque_ForwardIndexType
    {
        return endIndex as! opaque_ForwardIndexType
    }

    public func opaque_Indexable_elementAtPosition(position: Any) -> Any?
    {
        return (position as? Index).map({ self[$0] }).toOpaque()
    }
    
    public func opaque_Indexable_elementAtPosition(position: opaque_ForwardIndexType) -> Any
    {
        return self[startIndex.advancedBy(Index.Distance(position.toOpaque().distanceTo(AnyForwardIndex(0)).toIntMax()))]
    }
}

extension opaque_Indexable where Self: Indexable, Self.Index: opaque_ForwardIndexType
{
    public var opaque_Indexable_startIndex: opaque_ForwardIndexType
    {
        return startIndex
    }
    
    public var opaque_Indexable_endIndex: opaque_ForwardIndexType
    {
        return endIndex
    }
}
