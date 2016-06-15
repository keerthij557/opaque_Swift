//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Indexable2 = protocol<opaque_IndexableBase, Indexable>

public protocol opaque_IndexableBase
{
    static var opaque_IndexableBase__Element: Any.Type { get }
    static var opaque_IndexableBase_Index: Any.Type { get }

    var opaque_IndexableBase_startIndex: opaque_Comparable { get }
    var opaque_IndexableBase_endIndex: opaque_Comparable { get }
    
    func opaque_IndexableBase_elementAtPosition(_: Any) -> Any?
}

extension opaque_IndexableBase where Self: IndexableBase
{
    public static var opaque_IndexableBase__Element: Any.Type
    {
        return _Element.self
    }
    
    public static var opaque_IndexableBase_Index: Any.Type
    {
        return Index.self
    }
    
    public var opaque_IndexableBase_startIndex: opaque_Comparable
    {
        return startIndex as! opaque_Comparable
    }
    
    public var opaque_IndexableBase_endIndex: opaque_Comparable
    {
        return startIndex as! opaque_Comparable
    }

    public func opaque_IndexableBase_elementAtPosition(_ position: Any) -> Any?
    {
        return (position as? Index).map({ self[$0] }).toOpaque()
    }
}

extension opaque_IndexableBase where Self: IndexableBase, Self.Index: opaque_Comparable
{
    public var opaque_IndexableBase_startIndex: opaque_Comparable
    {
        return startIndex
    }
    
    public var opaque_IndexableBase_endIndex: opaque_Comparable
    {
        return endIndex
    }
}
