//
// Copyright (c) Vatsal Manot
//

import Swift

extension Sequence
{
    public func nilIfEmpty() -> Self?
    {
        return !isEmpty ?> self
    }
}

infix operator ??=: AssignmentPrecedence

public func ??= <T>(lhs: inout T?, rhs: (@autoclosure (Void) -> T))
{
    if lhs == nil
    {
        lhs = rhs()
    }
}

@_transparent public func isNotNil<T: OptionalProtocol>(_ x: T) -> Bool
{
    return x.wrapped != nil
}

@_transparent public func isNotNil<T0: OptionalProtocol, T1: OptionalProtocol>(_ x0: T0, _ x1: T1) -> Bool
{
    return x0.isNotNil && x1.isNotNil
}

@_transparent public func isNotNil<T0: OptionalProtocol, T1: OptionalProtocol, T2: OptionalProtocol>(_ x0: T0, _ x1: T1, _ x2: T2) -> Bool
{
    return x0.isNotNil && x1.isNotNil && x2.isNotNil
}

@_transparent public func isNotNil<T0: OptionalProtocol, T1: OptionalProtocol, T2: OptionalProtocol, T3: OptionalProtocol>(_ x0: T0, _ x1: T1, _ x2: T2, _ x3: T3) -> Bool
{
    return x0.isNotNil && x1.isNotNil && x2.isNotNil && x3.isNotNil
}

@_transparent public func isNotNil<T0: OptionalProtocol, T1: OptionalProtocol, T2: OptionalProtocol, T3: OptionalProtocol, T4: OptionalProtocol>(_ x0: T0, _ x1: T1, _ x2: T2, _ x3: T3, _ x4: T4) -> Bool
{
    return x0.isNotNil && x1.isNotNil && x2.isNotNil && x3.isNotNil && x4.isNotNil
}

@_transparent public func isNotNil<T0: OptionalProtocol, T1: OptionalProtocol, T2: OptionalProtocol, T3: OptionalProtocol, T4: OptionalProtocol, T5: OptionalProtocol>(_ x0: T0, _ x1: T1, _ x2: T2, _ x3: T3, _ x4: T4, _ x5: T5) -> Bool
{
    return x0.isNotNil && x1.isNotNil && x2.isNotNil && x3.isNotNil && x4.isNotNil && x5.isNotNil
}

@_transparent public func isNotNil<T0: OptionalProtocol, T1: OptionalProtocol, T2: OptionalProtocol, T3: OptionalProtocol, T4: OptionalProtocol, T5: OptionalProtocol, T6: OptionalProtocol>(_ x0: T0, _ x1: T1, _ x2: T2, _ x3: T3, _ x4: T4, _ x5: T5, _ x6: T6) -> Bool
{
    return x0.isNotNil && x1.isNotNil && x2.isNotNil && x3.isNotNil && x4.isNotNil && x5.isNotNil && x6.isNotNil
}

@_transparent public func isNotNil<T0: OptionalProtocol, T1: OptionalProtocol, T2: OptionalProtocol, T3: OptionalProtocol, T4: OptionalProtocol, T5: OptionalProtocol, T6: OptionalProtocol, T7: OptionalProtocol>(_ x0: T0, _ x1: T1, _ x2: T2, _ x3: T3, _ x4: T4, _ x5: T5, _ x6: T6, _ x7: T7) -> Bool
{
    return x0.isNotNil && x1.isNotNil && x2.isNotNil && x3.isNotNil && x4.isNotNil && x5.isNotNil && x6.isNotNil && x7.isNotNil
}
