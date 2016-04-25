//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias SignedNumberType2 = protocol<opaque_SignedNumberType, SignedNumberType>

public protocol opaque_SignedNumberType: opaque_Comparable
{
    var inverselySigned: Self { get }
}

extension opaque_SignedNumberType where Self: SignedNumberType
{
    public var inverselySigned: Self
    {
        return -self
    }
}
