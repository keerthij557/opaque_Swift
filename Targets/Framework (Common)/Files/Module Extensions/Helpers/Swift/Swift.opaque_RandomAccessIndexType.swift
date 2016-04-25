//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias RandomAccessIndexType2 = protocol<opaque_RandomAccessIndexType, RandomAccessIndexType>

public protocol opaque_RandomAccessIndexType: opaque_BidirectionalIndexType
{
    func opaque_RandomAccessIndexType_distanceTo(other: Any) -> Any?
    func opaque_RandomAccessIndexType_advancedBy(n: Any) -> Self?
    func opaque_RandomAccessIndexType_advancedBy(n: Any, limit: Any) -> Any?

    func toOpaque() -> AnyRandomAccessIndex
}

extension opaque_RandomAccessIndexType where Self: RandomAccessIndexType
{
    public func opaque_RandomAccessIndexType_distanceTo(other: Any) -> Any?
    {
        return (other as? Self).map({ self.distanceTo($0) }).toOpaque()
    }
    
    public func opaque_RandomAccessIndexType_advancedBy(n: Any) -> Self?
    {
        return (n as? Distance).map({ self.advancedBy($0) })
    }
    
    public func opaque_RandomAccessIndexType_advancedBy(n: Any, limit: Any) -> Any?
    {
        return (n as? Distance).flatMap({ n in (limit as? Self).map({ self.advancedBy(n, limit: $0) }) })
    }
    
    public func toOpaque() -> AnyRandomAccessIndex
    {
        return .init(self)
    }
}
