//
// Copyright (c) Vatsal Manot
//

import Swift

extension Swift.SignedNumber where Self: Initiable
{
    @_transparent public static func abs(_ value: Self) -> Self
    {
        return (value < Self()) ? -value : value
    }
}
