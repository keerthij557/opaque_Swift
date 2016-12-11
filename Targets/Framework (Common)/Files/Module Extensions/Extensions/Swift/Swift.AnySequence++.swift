//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnySequence
{
    public init?<T>(opaque: T)
    {
        guard let _self: AnySequence = (-?>opaque as opaque_Sequence?)?.opaque_Sequence_toAnySequence() as? AnySequence else
        {
            return nil
        }
        
        self = _self
    }
}
