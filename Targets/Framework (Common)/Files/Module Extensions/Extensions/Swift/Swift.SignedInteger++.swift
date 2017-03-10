//
// Copyright (c) Vatsal Manot
//

import Swift

extension Swift.SignedInteger
{
    @_transparent public mutating func advance(by distance: Int)
    {
        self = advanced(by: distance)
    }
}
