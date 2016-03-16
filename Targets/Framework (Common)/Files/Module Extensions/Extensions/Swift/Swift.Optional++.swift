//
// Copyright (c) Vatsal Manot
//

import Swift

extension Optional
{
    public func toOpaque() -> Any?
    {
        return map(Optional.init)
    }
}
