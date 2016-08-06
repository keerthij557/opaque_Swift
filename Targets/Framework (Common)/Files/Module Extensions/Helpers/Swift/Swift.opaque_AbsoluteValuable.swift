//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias AbsoluteValuable2 = opaque_AbsoluteValuable & AbsoluteValuable

public protocol opaque_AbsoluteValuable: opaque_SignedNumber
{
    static func opaque_AbsoluteValuable_abs(_: Any) -> Self?
}

extension opaque_AbsoluteValuable where Self: AbsoluteValuable
{
    public static func opaque_AbsoluteValuable_abs(_ x: Any) -> Self?
    {
        return (-?>x).map(abs)
    }
}
