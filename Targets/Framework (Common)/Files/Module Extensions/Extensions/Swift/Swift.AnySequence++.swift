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
