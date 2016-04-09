//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias MutableIndexable2 = protocol<_MutableIndexable, MutableIndexable>

public protocol _MutableIndexable: _Indexable
{
    mutating func _setElement(newElement: Any, at position: Any) -> Void?
    mutating func _setElement(newElement: Any, at position: _ForwardIndexType) -> Void?
}

extension _MutableIndexable where Self: MutableIndexable
{
    public mutating func _setElement(newElement: Any, at position: Any) -> Void?
    {
        if let newElement = newElement as? _Element, position = position as? Index
        {
            return (self[position] = newElement)
        }
        
        return nil 
    }
    
    public mutating func _setElement(newElement: Any, at position: _ForwardIndexType) -> Void?
    {
        if let newElement = newElement as? _Element
        {
            return (self[startIndex.advancedBy(Index.Distance(position.toOpaque().distanceTo(AnyForwardIndex(0)).toIntMax()))] = newElement)
        }
        
        return nil
    }
}

extension Guess: Indexable
{
    public var startIndex: AnyForwardIndex
    {
        return forcetype(_Indexable)._startIndex.toOpaque()
    }
    
    public var endIndex: AnyForwardIndex
    {
        return forcetype(_Indexable)._endIndex.toOpaque()
    }
    
    public subscript(position: _ForwardIndexType) -> Any
    {
        get
        {
            return forcetype(_Indexable)._elementAtPosition(position)
        }
        
        set
        {
            return forcetype(_MutableIndexable.self, { $0._setElement(newValue, at: position)! })
        }
    }
    
    public subscript(position: AnyForwardIndex) -> Any
    {
        get
        {
            return self[position as _ForwardIndexType]
        }
        
        set
        {
            self[position as _ForwardIndexType] = newValue
        }
    }
}
