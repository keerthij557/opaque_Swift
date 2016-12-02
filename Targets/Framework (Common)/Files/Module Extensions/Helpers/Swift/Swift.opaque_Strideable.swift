//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Strideable2 = opaque_Strideable & Strideable

public protocol opaque_Strideable: opaque_Comparable
{
    static var opaque_Strideable_Stride: Any.Type { get }
    
    func opaque_Strideable_distance(to _: Any) -> opaque_SignedNumber?
    func opaque_Strideable_advanced(by _: Any) -> Self?
}

extension opaque_Strideable where Self: Strideable
{
    public static var opaque_Strideable_Stride: Any.Type
    {
        return Stride.self
    }
    
    public func opaque_Strideable_advanced(by n: Any) -> Self?
    {
        return (-?>n).map(advanced)
    }
}

extension opaque_Strideable where Self: Strideable, Self.Stride: opaque_SignedNumber
{
    public func opaque_Strideable_distance(to other: Any) -> opaque_SignedNumber?
    {
        return (-?>other).map(distance)
    }
}
