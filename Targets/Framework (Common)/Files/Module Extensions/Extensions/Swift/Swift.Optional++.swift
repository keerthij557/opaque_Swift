//
// Copyright (c) Vatsal Manot
//

import Swift

extension Optional
{
    @_transparent public func toOpaque() -> Any?
    {
        return flatMap((Any?).init)
    }
}
