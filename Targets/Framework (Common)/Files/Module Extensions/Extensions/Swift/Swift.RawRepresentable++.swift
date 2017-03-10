//
// Copyright (c) Vatsal Manot
//

import Swift

extension OptionSet
{
    @_transparent public static func with(rawValue: RawValue) -> Self
    {
        return .init(rawValue: rawValue)
    }
}
