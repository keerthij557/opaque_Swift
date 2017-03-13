//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnySequence: OpaqueRepresentable
{
    public typealias OpaqueRepresentation = opaque_Sequence
    
    public var opaqueRepresentation: OpaqueRepresentation
    {
        return self
    }
    
    public init?(opaque: OpaqueRepresentation)
    {
        self.init(_optional: -?>opaque.opaque_Sequence_toAnySequence())
    }
}

extension Optional: OpaqueRepresentable
{
    public typealias OpaqueRepresentation = Optional<Any>
    
    public var opaqueRepresentation: OpaqueRepresentation
    {
        return flatMap((Any?).init)
    }

    public init?(opaque: OpaqueRepresentation)
    {
        guard let _self = Optional<_Self>((-?>opaque as _Self)) else
        {
            return nil
        }
        
        self = _self
    }
}

extension Zip2Sequence
{
    public typealias OpaqueRepresentation = AnySequence<(Any, Any)>
    
    public var opaqueRepresentation: OpaqueRepresentation
    {
        return .init(lazy.map({ (($0.0 as Any), ($0.1 as Any)) }))
    }
    
    public init?(opaque: OpaqueRepresentation)
    {
        return nil
    }
}
 
