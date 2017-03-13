//
// Copyright (c) Vatsal Manot
//

import Swift

extension Optional
{
    public typealias OpaqueRepresentation = Any?
    
    public init?(opaque: OpaqueRepresentation)
    {
        guard let _self = Optional<_Self>((-?>opaque as _Self)) else
        {
            return nil
        }
        
        self = _self
    }
    
    public var opaque: OpaqueRepresentation
    {
        return flatMap((Any?).init)
    }
}
