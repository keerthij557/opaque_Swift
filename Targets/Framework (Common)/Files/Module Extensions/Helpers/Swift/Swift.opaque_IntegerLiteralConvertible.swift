//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias IntegerLiteralConvertible2 = protocol<opaque_IntegerLiteralConvertible, IntegerLiteralConvertible>

public protocol opaque_IntegerLiteralConvertible: CommonProtocol
{
    init(integerLiteral value: UInt8)
}

extension opaque_IntegerLiteralConvertible where Self: IntegerLiteralConvertible, Self.IntegerLiteralType: SignedInteger
{
    public init(integerLiteral value: UInt8)
    {
        self.init(integerLiteral: IntegerLiteralType(IntMax(value)))
    }
}

extension opaque_IntegerLiteralConvertible where Self: IntegerLiteralConvertible, Self.IntegerLiteralType: UnsignedInteger
{
    public init(integerLiteral value: UInt8)
    {
        self.init(integerLiteral: IntegerLiteralType(UIntMax(value)))
    }
}
