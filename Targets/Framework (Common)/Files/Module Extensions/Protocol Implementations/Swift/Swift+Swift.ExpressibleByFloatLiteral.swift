//
// Copyright (c) Vatsal Manot
//

import Swift

extension String: ExpressibleByFloatLiteral
{
    public init(floatLiteral value: Float)
    {
        self.init(value)
    }
}
