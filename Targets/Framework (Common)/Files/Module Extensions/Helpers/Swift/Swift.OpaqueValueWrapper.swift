//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol opaque_OpaqueValueWrapper: AnyProtocol
{
    var opaque_opaqueValue: Any { get }
    
    static func opaque_OpaqueValueWrapper_init(opaqueValue: Any) -> opaque_OpaqueValueWrapper?
}

extension opaque_OpaqueValueWrapper where Self: OpaqueValueWrapper
{
    public var opaque_opaqueValue: Any
    {
        return opaqueValue
    }
    
    public static func opaque_OpaqueValueWrapper_init(opaqueValue: Any) -> opaque_OpaqueValueWrapper?
    {
        return (-?>opaqueValue).map(self.init(opaqueValue:))
    }
}

public protocol OpaqueValueWrapper: opaque_OpaqueValueWrapper
{
    associatedtype OpaqueValue
    
    var opaqueValue: OpaqueValue { get }
    
    init(opaqueValue: OpaqueValue)
}

public protocol opaque_FallibleOpaqueValueWrapper: AnyProtocol
{
    var opaque_opaqueValue: Any { get }
    
    static func opaque_OpaqueValueWrapper_init(opaqueValue: Any) -> opaque_OpaqueValueWrapper??
}

extension opaque_FallibleOpaqueValueWrapper where Self: FallibleOpaqueValueWrapper
{
    public var opaque_opaqueValue: Any
    {
        return opaqueValue
    }
    
    public static func opaque_FallibleOpaqueValueWrapper_init(opaqueValue: Any) -> opaque_FallibleOpaqueValueWrapper??
    {
        return (-?>opaqueValue).map(self.init(opaqueValue:))
    }
}

public protocol FallibleOpaqueValueWrapper: opaque_FallibleOpaqueValueWrapper
{
    associatedtype OpaqueValue
    
    var opaqueValue: OpaqueValue { get }
    
    init?(opaqueValue: OpaqueValue)
}
