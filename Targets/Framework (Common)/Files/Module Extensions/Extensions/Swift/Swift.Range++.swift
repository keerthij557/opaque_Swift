//
// Copyright (c) Vatsal Manot
//

import Swift

extension Range where Bound: Strideable
{
    @_transparent public init(_ bound: Bound)
    {
        self = bound..<bound.successor()
    }
}
