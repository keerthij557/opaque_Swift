//
// Copyright (c) Vatsal Manot
//

import Darwin
import Swift

public protocol SimpleIntegerInitiable
{
    init(_: UInt8)
    init(_: Int8)
}

public protocol UnsignedIntegerInitiable: SimpleIntegerInitiable
{
    init(_: UInt)
    init(_: UInt8)
    init(_: UInt16)
    init(_: UInt32)
    init(_: UInt64)
}

extension UnsignedIntegerInitiable
{
    @_transparent public init(_ value: UInt8)
    {
        self.init(UInt(value))
    }
    
    @_transparent public init(_ value: UInt16)
    {
        self.init(UInt(value))
    }
    
    @_transparent public init(_ value: UInt32)
    {
        self.init(UInt(value))
    }
    
    @_transparent public init(_ value: UInt64)
    {
        self.init(UInt(value))
    }
}

public protocol SignedIntegerInitiable
{
    init(_: Int)
    init(_: Int8)
    init(_: Int16)
    init(_: Int32)
    init(_: Int64)
}

extension SignedIntegerInitiable
{
    @_transparent public init(_ value: Int8)
    {
        self.init(Int(value))
    }
    
    @_transparent public init(_ value: Int16)
    {
        self.init(Int(value))
    }
    
    @_transparent public init(_ value: Int32)
    {
        self.init(Int(value))
    }
    
    @_transparent public init(_ value: Int64)
    {
        self.init(Int(value))
    }
}

public protocol IntegerInitiable: SignedIntegerInitiable, SimpleIntegerInitiable, UnsignedIntegerInitiable
{

}
