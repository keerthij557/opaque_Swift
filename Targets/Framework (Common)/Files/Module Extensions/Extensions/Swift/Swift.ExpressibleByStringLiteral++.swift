//
// Copyright (c) Vatsal Manot
//

import Swift

extension ExpressibleByStringLiteral where StringLiteralType == String
{
    public init(unicodeScalarLiteral value: StringLiteralType)
    {
        self.init(stringLiteral: value)
    }

    public init(extendedGraphemeClusterLiteral value: StringLiteralType)
    {
        self.init(stringLiteral: value)
    }
}
