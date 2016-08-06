//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias IndexableBase2 = opaque_IndexableBase & IndexableBase

public protocol opaque_IndexableBase: CommonProtocol
{
    static var opaque_IndexableBase__Element: Any.Type { get }
    static var opaque_IndexableBase_Index: Any.Type { get }

    var opaque_IndexableBase_startIndex: opaque_Comparable { get }
    var opaque_IndexableBase_endIndex: opaque_Comparable { get }
    
    func opaque_IndexableBase_elementAtPosition(_ position: Any) -> Any?
    func opaque_IndexableBase_elementsWithinBounds(_ bounds: Any) -> opaque_Sequence?
    
    func opaque_IndexableBase_index(after i: opaque_Comparable) -> opaque_Comparable?
    func opaque_IndexableBase_formIndex(after i: inout opaque_Comparable) -> Void?
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
    
    public func opaque_IndexableBase_elementAtPosition(_ position: Any) -> Any?
    {
        return (-?>position).map({ self[$0] }).toOpaque()
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
    
    public func opaque_IndexableBase_index(after i: opaque_Comparable) -> opaque_Comparable?
    {
        return (-?>i).map(index)
    }
    
    public func opaque_IndexableBase_formIndex(after i: inout opaque_Comparable) -> Void?
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

extension opaque_IndexableBase where Self: IndexableBase, Self.SubSequence: opaque_Sequence
{
    public func opaque_IndexableBase_elementsWithinBounds(_ bounds: Any) -> opaque_Sequence?
    {
        return (-?>bounds).map({ self[$0] })
    }
}
