//
// Copyright (c) Vatsal Manot
//

import Swift

extension Bool: ExpressibleByIntegerLiteral
{
    public init(integerLiteral value: Int)
    {
        self = value > 0
    }
}

extension String: ExpressibleByIntegerLiteral
{
    public init(integerLiteral value: Int)
    {
        self.init(describing: value)
    }
}

extension UnicodeDecodingResult: ExpressibleByIntegerLiteral
{
    public init(integerLiteral value: UInt32)
    {
        self = .scalarValue(UnicodeScalar(value).forceUnwrap())
    }
}

extension UnicodeScalar: ExpressibleByIntegerLiteral
{
    public init(integerLiteral value: UInt32)
    {
        self = UnicodeScalar(value).forceUnwrap()
    }
}
