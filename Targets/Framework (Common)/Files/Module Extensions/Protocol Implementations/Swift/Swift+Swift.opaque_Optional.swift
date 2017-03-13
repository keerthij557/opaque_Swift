//
// Copyright (c) Vatsal Manot
//

import Swift

extension Optional: opaque_Optional
{
    public var isNil: Bool
    {
        return self == nil
    }

    public var opaque_Optional_wrapped: Any?
    {
        return flatMap(Optional<Any>.some)
    }
    
    public mutating func opaque_Optional_set(wrapped: Any?) -> Void?
    {
        return (-?>wrapped).map({ self = $0 })
    }
}
