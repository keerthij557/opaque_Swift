//
// Copyright (c) Vatsal Manot
//

import Swift

@_specialize(Int)
@_specialize(Int8)
@_specialize(Int16)
@_specialize(Int32)
@_specialize(Int64)
@_specialize(UInt)
@_specialize(UInt8)
@_specialize(UInt16)
@_specialize(UInt32)
@_specialize(UInt64)

@_transparent public func build<T>(_ x: inout T, with f: ((T, T) -> T), _ y: T)
{
    x = f(x, y)
}

@_transparent public func build<T, U>(_ x: inout T, with f: ((T, U) -> T), _ y: U)
{
    x = f(x, y)
}

@_transparent public func build<T, U, V>(_ x: T, with f: ((inout T) throws -> ((U) -> V)), _ y: U) rethrows -> T
{
    var x = x
    
    _ =  try f(&x)(y)
    
    return x
}

@_transparent public func build<T, U, V>(_ x: T, with f: ((inout T) throws -> ((U) throws -> V)), _ y: U) throws -> T
{
    var x = x
    
    _ =  try f(&x)(y)
    
    return x
}

@_transparent public func build<T, U>(_ x: T, with f: ((inout T) throws -> ((Void) -> U))) rethrows -> T
{
    var x = x
    
    _ = try f(&x)()
    
    return x
}

@_transparent public func build<T, U>(_ x: T, with f: ((inout T) throws -> ((Void) throws -> U))) throws -> T
{
    var x = x
    
    _ = try f(&x)()
    
    return x
}

@_transparent public func build<T, U, V>(_ x: T, with f: ((inout T, U) throws -> V), _ y: U) rethrows -> T
{
    var x = x
    
    _ = try f(&x, y)
    
    return x
}

@_transparent public func build<T: AnyObject, U, V>(_ x: T, with f: ((T) throws -> ((U) -> V)), _ y: U) rethrows -> T
{
    _ =  try f(x)(y)
    
    return x
}

@_transparent public func build<T: AnyObject, U>(_ x: T, with f: ((T) throws -> ((Void) -> U))) rethrows -> T
{
    _ = try f(x)()
    
    return x
}

@_transparent public func build<T: AnyObject, U, V>(_ x: T, with f: ((T, U) throws -> V), _ y: U) rethrows -> T
{
    _ = try f(x, y)
    
    return x
}
