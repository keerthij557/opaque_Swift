//
// Copyright (c) Vatsal Manot
//

import Swift

@_transparent public func id<T>(_ x: T) -> T
{
    return x
}

@_transparent public func id<T>(_ x: inout T) -> T
{
    return x
}

@_transparent public func id<T, U>(_ f: (@escaping (T) throws -> U)) -> ((T) throws -> U)
{
    return f
}

@_transparent public func id<T, U, V>(_ f: @escaping ((T, U) -> V)) -> (((T, U)) -> V)
{
    return { f($0.0, $0.1) }
}

@_transparent public func id<T, U, V>(_ f: @escaping ((inout T, inout U) -> V)) -> ((inout (T, U)) -> V)
{
    return { f(&$0.0, &$0.1) }
}
