//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol opaque_Optional: AnyProtocol
{
    var isNil: Bool { get }

    var opaque_Optional_wrapped: Any? { get }
    
    mutating func opaque_Optional_set(wrapped: Any?) -> Void?
}

// MARK: - Extensions -

extension opaque_Optional
{
    public var isNotNil: Bool
    {
        return !isNil
    }
    
    public func opaque_Optional_flattening() -> Any?
    {
        var result = opaque_Optional_wrapped
        
        if let value = result, let _value = (value as? opaque_Optional)
        {
            result = _value.opaque_Optional_flattening()
        }
        
        return result
    }
    
    public func opaque_Optional_valueOrNil() -> Any
    {
        guard let value = opaque_Optional_flattening() else
        {
            return Optional<Any>.none
        }
        
        return value
    }
}

// MARK: - Helpers -

extension Sequence
{
    @_transparent public func nilIfEmpty() -> Self?
    {
        return first(where: { _ in true }).map({ _ in self })
    }
}
