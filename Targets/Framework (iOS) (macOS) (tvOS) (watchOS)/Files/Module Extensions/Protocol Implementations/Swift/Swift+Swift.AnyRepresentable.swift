//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnySequence: AnyRepresentable
{
    public var anyValue: Any
    {
        return self
    }
    
    public init?(anyValue opaque: Any)
    {
        self.init(opaqueRepresentation: opaque)
    }
}

extension Optional: AnyRepresentable
{
    public var anyValue: Any
    {
        return opaqueRepresentation as Any
    }

    public init?(anyValue opaque: Any)
    {
        guard let _self = Optional<_Self>((-?>opaque as _Self)) else
        {
            return nil
        }

        self = _self
    }
}
