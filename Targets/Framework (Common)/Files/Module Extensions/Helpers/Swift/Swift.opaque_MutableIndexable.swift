//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias MutableIndexable2 = protocol<opaque_MutableIndexable, MutableIndexable>

public protocol opaque_MutableIndexable: opaque_Indexable
{
    mutating func opaque_MutableIndexable_setElement(_: Any, at _: Any) -> Void?
    mutating func opaque_MutableIndexable_setElement(_: Any, at _: opaque_ForwardIndexType) -> Void?
}

extension opaque_MutableIndexable where Self: MutableIndexable
{
    public mutating func opaque_MutableIndexable_setElement(newElement: Any, at position: Any) -> Void?
    {
        if let newElement = newElement as? _Element, position = position as? Index
        {
            return (self[position] = newElement)
        }
        
        return nil 
    }
    
    public mutating func opaque_MutableIndexable_setElement(newElement: Any, at position: opaque_ForwardIndexType) -> Void?
    {
        if let newElement = newElement as? _Element
        {
            return (self[startIndex.advancedBy(Index.Distance(position.toOpaque().distanceTo(AnyForwardIndex(0)).toIntMax()))] = newElement)
        }
        
        return nil
    }
}

extension Guess: Indexable, MutableIndexable
{
    public var startIndex: AnyForwardIndex
    {
        return forcetype(opaque_Indexable).opaque_Indexable_startIndex.toOpaque()
    }
    
    public var endIndex: AnyForwardIndex
    {
        return forcetype(opaque_Indexable).opaque_Indexable_endIndex.toOpaque()
    }
    
    public subscript(position: opaque_ForwardIndexType) -> Any
    {
        get
        {
            return forcetype(opaque_Indexable).opaque_Indexable_elementAtPosition(position)
        }
        
        set
        {
            return forcetype(opaque_MutableIndexable.self, { $0.opaque_MutableIndexable_setElement(newValue, at: position)! })
        }
    }
    
    public subscript(position: AnyForwardIndex) -> Any
    {
        get
        {
            return self[position as opaque_ForwardIndexType]
        }
        
        set
        {
            self[position as opaque_ForwardIndexType] = newValue
        }
    }
}
