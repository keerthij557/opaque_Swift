//
// Copyright (c) Vatsal Manot
//

import Swift

extension Optional
{
    @_transparent public func toOpaque() -> Any?
    {
        return flatMap((Any?).init)
    }
}

extension Optional
{
    @_transparent public func attemptCast<T, U>(f: ((T) -> U)) -> U?
    {
        return (-?>self).map(f)
    }

    @_transparent public func attemptCast<T, U>(mutating f: ((inout T) -> U)) -> U?
    {
        guard var cast = self as? T else
        {
            return nil
        }
        
        return f(&cast)
    }
}
