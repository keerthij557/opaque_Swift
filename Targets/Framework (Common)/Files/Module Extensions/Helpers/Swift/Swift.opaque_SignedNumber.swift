//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias SignedNumber2 = protocol<opaque_SignedNumber, SignedNumber>

public protocol opaque_SignedNumber: opaque_Comparable
{
    var inverselySigned: Self { get }
}

extension opaque_SignedNumber where Self: SignedNumber
{
    public var inverselySigned: Self
    {
        return -self
    }
}
