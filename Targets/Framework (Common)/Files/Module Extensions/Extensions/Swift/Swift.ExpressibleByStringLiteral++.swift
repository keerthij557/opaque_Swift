//
// Copyright (c) Vatsal Manot
//

import Swift

extension ExpressibleByStringLiteral where StringLiteralType == String
{
    public init(unicodeScalarLiteral value: String)
    {
        self.init(stringLiteral: value)
    }

    public init(extendedGraphemeClusterLiteral value: String)
    {
        self.init(stringLiteral: value)
    }
}
