//
// Copyright (c) Vatsal Manot
//

import Swift

prefix operator -*>

@_transparent public prefix func -*> <T, U>(rhs: T) -> U
{
    return unsafeBitCast(rhs, to: U.self)
}

infix operator -*>: CastingPrecedence

@_transparent public func -*> <T, U>(lhs: T, rhs: U.Type) -> U
{
    return unsafeBitCast(lhs, to: rhs)
}
