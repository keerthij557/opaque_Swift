//
// Copyright (c) Vatsal Manot
//

import Swift

prefix operator -!>

public prefix func -!> <T, U>(rhs: T) -> U
{
    return rhs as! U
}

infix operator -!>: CastingPrecedence

public func -!> <T, U>(rhs: T, lhs: U.Type) -> U
{
    return rhs as! U
}
