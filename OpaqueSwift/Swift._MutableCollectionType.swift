//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol _MutableCollectionType: _CollectionType, _MutableIndexable
{
    func _elementsWithinBounds(bounds: Any) -> _SequenceType?
    
    mutating func _setElements(elements: Any, within bounds: Any) -> Void?
}

extension _MutableCollectionType where Self: MutableCollectionType, Self.SubSequence: _SequenceType
{
    public func _elementsWithinBounds(bounds: Any) -> _SequenceType?
    {
        return (bounds as? Range<Index>).map({ self[$0] })
    }
    
    public mutating func _setElements(elements: Any, within bounds: Any) -> Void?
    {
        return (bounds as? Range<Index>).flatMap({ bounds in (elements as? SubSequence).map({ self[bounds] = $0 }) })
    }
}
