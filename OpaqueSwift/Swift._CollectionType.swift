//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias CollectionType2 = protocol<_CollectionType, CollectionType>

public protocol _CollectionType: _Indexable, _SequenceType
{
    var isEmpty: Bool { get }
    
    func underestimateCount() -> Int
    
    func toOpaque() -> AnySequence<(Any, Any)>
    
    func _toAnyForwardCollection() -> Any
}

extension _CollectionType where Self: CollectionType
{
    public func toOpaque() -> AnySequence<(Any, Any)>
    {
        return zip(startIndex..<endIndex, (startIndex..<endIndex).lazy.map({ self[$0] })).toOpaque()
    }
    
    public func _toAnyForwardCollection() -> Any
    {
        return AnyForwardCollection(self)
    }
}
