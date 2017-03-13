//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnySequence
{
    public init?<T>(opaque: T)
    {
        self.init(_optional: -?>(-?>opaque as opaque_Sequence?)?.opaque_Sequence_toAnySequence())
    }
    
    public init?(opaque: opaque_Sequence)
    {
        self.init(_optional: -?>opaque.opaque_Sequence_toAnySequence())
    }
}

extension Optional
{
    public typealias OpaqueRepresentation = Any?
    
    public init?(opaque: OpaqueRepresentation)
    {
        self.init(naiveOpaque: opaque as Any)
    }
    
    public func toOpaque() -> OpaqueRepresentation
    {
        return flatMap((Any?).init)
    }
}

extension Optional: NaiveOpaqueConvertible
{
    public init?(naiveOpaque opaque: Any)
    {
        guard let _self = Optional<_Self>((-?>opaque as _Self)) else
        {
            return nil
        }

        self = _self
    }
    
    public func toNaiveOpaque() -> Any
    {
        return toOpaque() as Any
    }
}
