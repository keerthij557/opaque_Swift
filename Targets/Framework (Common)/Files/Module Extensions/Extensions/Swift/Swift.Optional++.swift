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
    @_transparent public func toOpaque() -> Any?
    {
        return flatMap((Any?).init)
    }
}
