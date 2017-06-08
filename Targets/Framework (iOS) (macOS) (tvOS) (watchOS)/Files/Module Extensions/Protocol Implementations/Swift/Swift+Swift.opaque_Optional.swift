//
// Copyright (c) Vatsal Manot
//

import Swift

extension ImplicitlyUnwrappedOptional: opaque_Optional
{
    private var optionalValue: Optional<Wrapped>
    {
        get
        {
            return -*>self
        }
        
        set
        {
            self = -*>newValue
        }
    }
    
    public static var opaque_Optional_Wrapped: Any.Type
    {
        return Wrapped.self
    }
    
    public var isNil: Bool
    {
        return optionalValue.isNil
    }
    
    public var opaque_Optional_wrapped: Any?
    {
        return optionalValue.opaque_Optional_wrapped
    }
    
    public mutating func opaque_Optional_set(wrapped: Any?) -> Void?
    {
        return optionalValue.opaque_Optional_set(wrapped: wrapped)
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
