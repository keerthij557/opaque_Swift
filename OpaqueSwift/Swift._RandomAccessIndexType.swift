//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias RandomAccessIndexType2 = protocol<_RandomAccessIndexType, RandomAccessIndexType>

public protocol _RandomAccessIndexType: _BidirectionalIndexType
{
    func _distanceTo(other: Any) -> Any?
    func _advancedBy(n: Any) -> Self?
    func _advancedBy(n: Any, limit: Any) -> Any?
}

extension _RandomAccessIndexType where Self: RandomAccessIndexType
{
    public func _distanceTo(other: Any) -> Any?
    {
        return (other as? Self).map({ self.distanceTo($0) }).toOpaque()
    }
    
    public func _advancedBy(n: Any) -> Self?
    {
        return (n as? Distance).map({ self.advancedBy($0) })
    }
    
    public func _advancedBy(n: Any, limit: Any) -> Any?
    {
        return (n as? Distance).flatMap({ n in (limit as? Self).map({ self.advancedBy(n, limit: $0) }) })
    }
}
