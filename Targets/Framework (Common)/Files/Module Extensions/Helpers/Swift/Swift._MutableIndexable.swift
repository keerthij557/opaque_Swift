//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias MutableIndexable2 = protocol<_MutableIndexable, MutableIndexable>

public protocol _MutableIndexable: _Indexable
{
    mutating func _setElement(newElement: Any, at position: Any) -> Void?
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
}
