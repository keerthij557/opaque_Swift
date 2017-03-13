//
// Copyright (c) Vatsal Manot
//

import Swift

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
