//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Strideable2 = protocol<opaque_Strideable, Strideable>

public protocol opaque_Strideable: opaque_Comparable
{
    static var opaque_Strideable_Stride: Any.Type { get }
    
    func opaque_Strideable_distanceTo(_: Any) -> Any?
    func opaque_Strideable_advancedBy(_: Any) -> Self?
}

extension opaque_Strideable where Self: Strideable
{
    public static var opaque_Strideable_Stride: Any.Type
    {
        return Stride.self
    }
    
    public func opaque_Strideable_distanceTo(_ other: Any) -> Any?
    {
        return (other as? Self).map(distance)
    }
    
    public func opaque_Strideable_advancedBy(_ n: Any) -> Self?
    {
        return (n as? Stride).map(advanced)
    }
}
