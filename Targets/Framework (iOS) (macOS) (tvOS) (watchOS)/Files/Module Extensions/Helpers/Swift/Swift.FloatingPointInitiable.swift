//
// Copyright (c) Vatsal Manot
//

import CoreGraphics
import Foundation
import Swift

public protocol FloatingPointInitiable
{
    init(_: CGFloat)
    init(_: Decimal)
    init(_: Double)
    init(_: Float)
    init(_: NSDecimalNumber)
    init(_: NSNumber)
}

extension FloatingPointInitiable
{
    @_transparent public init(_ value: CGFloat)
    {
        self.init(CGFloat.NativeType(value))
    }
    
    @_transparent public init(_ value: Decimal)
    {
        self.init(value as NSNumber)
    }
    
    @_transparent public init(_ value: NSDecimalNumber)
    {
        self.init(value as NSNumber)
    }
}

extension FloatingPointInitiable where Self: ExpressibleByFloatLiteral
{
    @_transparent public init(floatLiteral value: Float)
    {
        self.init(value)
    }
}
