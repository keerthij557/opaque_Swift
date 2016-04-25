//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias RangeReplaceableCollectionType2 = protocol<opaque_RangeReplaceableCollectionType, RangeReplaceableCollectionType>

public protocol opaque_RangeReplaceableCollectionType: opaque_CollectionType
{
    init()
    
    mutating func removeAll(keepCapacity keepCapacity: Bool)
    
    mutating func opaque_RangeReplaceableCollectionType_reserveCapacity(n: Any) -> Void?
    mutating func opaque_RangeReplaceableCollectionType_replaceRange(subRange: Any, with newElements: Any) -> Void?
    mutating func opaque_RangeReplaceableCollectionType_append(x: Any) -> Void?
    mutating func opaque_RangeReplaceableCollectionType_appendContentsOf(newElements: Any) -> Void?
    mutating func opaque_RangeReplaceableCollectionType_insert(newElement: Any, atIndex i: Any) -> Void?
    mutating func opaque_RangeReplaceableCollectionType_insertContentsOf(newElements: Any, at i: Any) -> Void?
    mutating func opaque_RangeReplaceableCollectionType_removeAtIndex(i: Any) -> Any?
    mutating func opaque_RangeReplaceableCollectionType_removeFirst() -> Any
    mutating func opaque_RangeReplaceableCollectionType_removeRange(subRange: Any) -> Void?
}

extension opaque_RangeReplaceableCollectionType where Self: RangeReplaceableCollectionType
{
    public mutating func opaque_RangeReplaceableCollectionType_reserveCapacity(n: Any) -> Void?
    {
        return (n as? Index.Distance).map({ self.reserveCapacity($0) })
    }
    
    public mutating func opaque_RangeReplaceableCollectionType_replaceRange(subRange: Any, with newElements: Any) -> Void?
    {
        if let subRange = subRange as? Range<Index>, newElements = (newElements as? opaque_CollectionType)?.opaque_CollectionType_toAnyForwardCollection() as? AnyForwardCollection<Generator.Element>
        {
            replaceRange(subRange, with: newElements)
        }
        
        return nil
    }
    
    public mutating func opaque_RangeReplaceableCollectionType_append(x: Any) -> Void?
    {
        return (x as? Generator.Element).map({ self.append($0) })
    }
    
    public mutating func opaque_RangeReplaceableCollectionType_appendContentsOf(newElements: Any) -> Void?
    {
        return ((newElements as? opaque_SequenceType)?.opaque_SequenceType_toAnySequence() as? AnySequence).map({ self.appendContentsOf($0) })
    }
    
    public mutating func opaque_RangeReplaceableCollectionType_insert(newElement: Any, atIndex i: Any) -> Void?
    {
        if let newElement = newElement as? Generator.Element, i = i as? Index
        {
            insert(newElement, atIndex: i)
        }
        
        return nil
    }
    
    public mutating func opaque_RangeReplaceableCollectionType_insertContentsOf(newElements: Any, at i: Any) -> Void?
    {
        if let newElements = (newElements as? opaque_CollectionType)?.opaque_CollectionType_toAnyForwardCollection() as? AnyForwardCollection<Generator.Element>, let i = i as? Index
        {
            insertContentsOf(newElements, at: i)
        }
        
        return nil
    }
    
    public mutating func opaque_RangeReplaceableCollectionType_removeAtIndex(i: Any) -> Any?
    {
        return (i as? Index).map({ self.removeAtIndex($0) })
    }
    
    public mutating func opaque_RangeReplaceableCollectionType_removeFirst() -> Any
    {
        return removeFirst()
    }
    
    public mutating func opaque_RangeReplaceableCollectionType_removeRange(subRange: Any) -> Void?
    {
        return (subRange as? Range<Index>).map({ self.removeRange($0) })
    }
}
