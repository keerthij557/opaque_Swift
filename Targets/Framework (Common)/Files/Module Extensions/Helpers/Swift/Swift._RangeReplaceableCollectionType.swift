//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias RangeReplaceableCollectionType2 = protocol<_RangeReplaceableCollectionType, RangeReplaceableCollectionType>

public protocol _RangeReplaceableCollectionType: _CollectionType
{
    init()
    
    mutating func removeAll(keepCapacity keepCapacity: Bool)
    
    mutating func _reserveCapacity(n: Any) -> Void?
    mutating func _replaceRange(subRange: Any, with newElements: Any) -> Void?
    mutating func _append(x: Any) -> Void?
    mutating func _appendContentsOf(newElements: Any) -> Void?
    mutating func _insert(newElement: Any, atIndex i: Any) -> Void?
    mutating func _insertContentsOf(newElements: Any, at i: Any) -> Void?
    mutating func _removeAtIndex(i: Any) -> Any?
    mutating func _removeFirst() -> Any
    mutating func _removeRange(subRange: Any) -> Void?
}

extension _RangeReplaceableCollectionType where Self: RangeReplaceableCollectionType
{
    public mutating func _reserveCapacity(n: Any) -> Void?
    {
        return (n as? Index.Distance).map({ self.reserveCapacity($0) })
    }
    
    public mutating func _replaceRange(subRange: Any, with newElements: Any) -> Void?
    {
        if let subRange = subRange as? Range<Index>, newElements = (newElements as? _CollectionType)?._toAnyForwardCollection() as? AnyForwardCollection<Generator.Element>
        {
            replaceRange(subRange, with: newElements)
        }
        
        return nil
    }
    
    public mutating func _append(x: Any) -> Void?
    {
        return (x as? Generator.Element).map({ self.append($0) })
    }
    
    public mutating func _appendContentsOf(newElements: Any) -> Void?
    {
        return ((newElements as? _SequenceType)?._toAnySequence() as? AnySequence).map({ self.appendContentsOf($0) })
    }
    
    public mutating func _insert(newElement: Any, atIndex i: Any) -> Void?
    {
        if let newElement = newElement as? Generator.Element, i = i as? Index
        {
            insert(newElement, atIndex: i)
        }
        
        return nil
    }
    
    public mutating func _insertContentsOf(newElements: Any, at i: Any) -> Void?
    {
        if let newElements = (newElements as? _CollectionType)?._toAnyForwardCollection() as? AnyForwardCollection<Generator.Element>, let i = i as? Index
        {
            insertContentsOf(newElements, at: i)
        }
        
        return nil
    }
    
    public mutating func _removeAtIndex(i: Any) -> Any?
    {
        return (i as? Index).map({ self.removeAtIndex($0) })
    }
    
    public mutating func _removeFirst() -> Any
    {
        return removeFirst()
    }
    
    public mutating func _removeRange(subRange: Any) -> Void?
    {
        return (subRange as? Range<Index>).map({ self.removeRange($0) })
    }
}
