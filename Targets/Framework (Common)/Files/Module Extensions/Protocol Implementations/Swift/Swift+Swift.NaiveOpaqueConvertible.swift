//
// Copyright (c) Vatsal Manot
//

import Swift

extension Optional
{
    @_transparent init?(opaque: Any)
    {
        self.init(_optional: -?>opaque)
    }
    
    @_transparent public func opaque() -> Any?
    {
        return flatMap((Any?).init)
    }
}
