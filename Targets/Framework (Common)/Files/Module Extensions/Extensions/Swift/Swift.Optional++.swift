//
// Copyright (c) Vatsal Manot
//

import Swift

extension Optional
{
    public func toOpaque() -> Any?
    {
        return flatMap(Optional<Any>.init)
    }
}
