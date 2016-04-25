//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Strideable2 = protocol<opaque_Strideable, Strideable>

public protocol opaque_Strideable: opaque_Comparable
{
    static var opaque_Strideable_Stride: Any.Type { get }
    
    func opaque_RandomAccessIndexType_distanceTo(other: Any) -> Any?
    func opaque_RandomAccessIndexType_advancedBy(n: Any) -> Self?
}

extension opaque_Strideable where Self: Strideable
{
    public static var opaque_Strideable_Stride: Any.Type
    {
        return Stride.self
    }
    
    public func opaque_RandomAccessIndexType_distanceTo(other: Any) -> Any?
    {
        return (other as? Self).map(distanceTo)
    }
    
    public func opaque_RandomAccessIndexType_advancedBy(n: Any) -> Self?
    {
        return (n as? Stride).map(advancedBy)
    }
}
