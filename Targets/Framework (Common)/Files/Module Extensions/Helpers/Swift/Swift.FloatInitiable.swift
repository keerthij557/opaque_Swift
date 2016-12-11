//
// Copyright (c) Vatsal Manot
//

import CoreGraphics
import Swift

public protocol FloatInitiable
{
    init(_: Float)
    init(_: Double)
    init(_: CGFloat)
}

extension FloatInitiable
{
    @_transparent public init(_ value: CGFloat)
    {
        self.init(CGFloat.NativeType(value))
    }
}

extension FloatInitiable where Self: ExpressibleByFloatLiteral
{
    @_transparent public init(floatLiteral value: Float)
    {
        self.init(value)
    }
}
