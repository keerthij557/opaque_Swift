//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol opaque_Optional
{
    var isNotNil: Bool { get }

    var opaque_Optional_wrapped: Any? { get }
    
    mutating func opaque_Optional_set(wrapped: Any?) -> Void?
}

// MARK: - Extensions -

extension opaque_Optional
{
    public func opaque_Optional_flattening() -> Any?
    {
        var result = opaque_Optional_wrapped
        
        if let value = result, let _value = (value as? opaque_Optional)
        {
            result = _value.opaque_Optional_flattening()
        }
        
        return result
    }
}

// MARK: - Helpers -

extension Sequence
{
    public func nilIfEmpty() -> Self?
    {
        return first(where: { _ in true }).map({ _ in self })
    }
}

@_transparent public func flattenOptionalIfNecessary(_ x: inout Any)
{
    guard let result = x as? opaque_Optional else
    {
        return
    }
    
    x = result.opaque_Optional_flattening() as Any
}
