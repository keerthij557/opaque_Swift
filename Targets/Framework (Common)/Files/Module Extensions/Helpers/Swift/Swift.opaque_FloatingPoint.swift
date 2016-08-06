//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias FloatingPoint2 = opaque_FloatingPoint & FloatingPoint

public protocol opaque_FloatingPoint: opaque_ExpressibleByIntegerLiteral, opaque_SignedNumber, opaque_Strideable
{
    init()
    
    init(_ value: UInt8)
    init(_ value: Int8)
    init(_ value: UInt16)
    init(_ value: Int16)
    init(_ value: UInt32)
    init(_ value: Int32)
    init(_ value: UInt64)
    init(_ value: Int64)
    init(_ value: UInt)
    init(_ value: Int)
    
    static var radix: Int { get }
    
    var sign: FloatingPointSign { get }
    
    var isNormal: Bool { get }
    var isFinite: Bool { get }
    var isZero: Bool { get }
    var isSubnormal: Bool { get }
    var isInfinite: Bool { get }
    var isNaN: Bool { get }
    var isSignalingNaN: Bool { get }
    var floatingPointClass: FloatingPointClassification { get }
    var isCanonical: Bool { get }
}
