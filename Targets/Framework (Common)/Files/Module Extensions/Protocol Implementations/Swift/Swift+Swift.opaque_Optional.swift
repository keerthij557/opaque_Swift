//
// Copyright (c) Vatsal Manot
//

import Swift

extension ImplicitlyUnwrappedOptional: opaque_Optional
{
    public var optionalValue: Optional<Wrapped>
    {
        get
        {
            return Optional(self)
        }
        
        set
        {
            self = newValue
        }
    }
    
    public static var opaque_Optional_Wrapped: Any.Type
    {
        return Wrapped.self
    }
    
    public var isNil: Bool
    {
        return Optional(self).isNil
    }
    
    public var opaque_Optional_wrapped: Any?
    {
        return Optional(self).opaque_Optional_wrapped
    }
    
    public mutating func opaque_Optional_set(wrapped: Any?) -> Void?
    {
        return (-?>wrapped).map({ self = $0 })
    }
}

extension Optional: opaque_Optional
{
    public static var opaque_Optional_Wrapped: Any.Type
    {
        return Wrapped.self
    }
    
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
