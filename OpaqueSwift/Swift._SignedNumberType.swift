//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias SignedNumberType2 = protocol<_SignedNumberType, SignedNumberType>

public protocol _SignedNumberType: _Comparable
{
    var inverselySigned: Self { get }
}

extension _SignedNumberType where Self: SignedNumberType
{
    public var inverselySigned: Self
    {
        return -self
    }
}
