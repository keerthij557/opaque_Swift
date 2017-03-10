//
// Copyright (c) Vatsal Manot
//

import Swift

extension Optional
{
    @_transparent public func castMap<T, U>(_ transform: ((T) -> U)) -> U?
    {
        return (-?>self).map(transform)
    }
}

extension Optional
{
    @_transparent public func opaque() -> Any?
    {
        return flatMap((Any?).init)
    }
}

infix operator ??=: AssignmentPrecedence

extension Optional
{
    public static func ??= (lhs: inout Optional<Wrapped>, rhs: (@autoclosure (Void) -> Wrapped))
    {
        if lhs == nil
        {
            lhs = rhs()
        }
    }
}
