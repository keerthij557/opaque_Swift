//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Indexable2 = protocol<_Indexable, Indexable>

public protocol _Indexable
{
    static var __Element: Any.Type { get }
    static var _Index: Any.Type { get }

    var _startIndex: _ForwardIndexType { get }
    var _endIndex: _ForwardIndexType { get }
    
    func _elementAtPosition(position: Any) -> Any?
    func _elementAtPosition(position: _ForwardIndexType) -> Any
}

extension _Indexable where Self: Indexable
{
    public static var __Element: Any.Type
    {
        return _Element.self
    }
    
    public static var _Index: Any.Type
    {
        return Index.self
    }
    
    public var _startIndex: _ForwardIndexType
    {
        return startIndex as! _ForwardIndexType
    }
    
    public var _endIndex: _ForwardIndexType
    {
        return endIndex as! _ForwardIndexType
    }

    public func _elementAtPosition(position: Any) -> Any?
    {
        return (position as? Index).map({ self[$0] }).toOpaque()
    }
    
    public func _elementAtPosition(position: _ForwardIndexType) -> Any
    {
        return self[startIndex.advancedBy(Index.Distance(position.toOpaque().distanceTo(AnyForwardIndex(0)).toIntMax()))]
    }
}

extension _Indexable where Self: Indexable, Self.Index: _ForwardIndexType
{
    public var _startIndex: _ForwardIndexType
    {
        return startIndex
    }
    
    public var _endIndex: _ForwardIndexType
    {
        return endIndex
    }
}
