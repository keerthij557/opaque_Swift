//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnySequence: NaiveOpaqueConvertible
{
    public var naiveOpaque: Any
    {
        return self
    }
    
    public init?(naiveOpaque opaque: Any)
    {
        self.init(opaqueRepresentation: opaque)
    }
}

extension Optional: NaiveOpaqueConvertible
{
    public var naiveOpaque: Any
    {
        return opaqueRepresentation as Any
    }

    public init?(naiveOpaque opaque: Any)
    {
        guard let _self = Optional<_Self>((-?>opaque as _Self)) else
        {
            return nil
        }

        self = _self
    }
}
