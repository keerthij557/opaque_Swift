//
// Copyright (c) Vatsal Manot
//

import CoreGraphics
import Swift

public protocol FloatingPointInitiable
{
    init(_: Float)
    init(_: Double)
    init(_: CGFloat)
}

extension FloatingPointInitiable
{
    @_transparent public init(_ value: CGFloat)
    {
        self.init(CGFloat.NativeType(value))
    }
}

extension FloatingPointInitiable where Self: ExpressibleByFloatLiteral
{
    @_transparent public init(floatLiteral value: Float)
    {
        self.init(value)
    }
}
